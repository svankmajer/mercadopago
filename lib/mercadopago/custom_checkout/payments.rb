module MercadoPago
  module CustomCheckout
    module Payments
      def self.create(access_token, payload)
        headers = { content_type: 'application/json', accept: 'application/json' }
        MercadoPago::Request.wrap_post("/v1/payments?access_token=#{access_token}", payload, headers)
      end

      def self.get(access_token, payment_id)
        headers = { accept: 'application/json' }
        MercadoPago::Request.wrap_get("/v1/payments/#{payment_id}?access_token=#{access_token}", headers)
      end

      def self.update(access_token, payment_id, payload)
        headers = { content_type: 'application/json', accept: 'application/json' }
        MercadoPago::Request.wrap_put("/v1/payments/#{payment_id}?access_token=#{access_token}", payload, headers)
      end
    end
  end
end