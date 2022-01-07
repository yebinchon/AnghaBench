
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_ssl_data {int conn; int ssl_ctx; struct wpabuf* tls_out; } ;
struct eap_sm {int dummy; } ;


 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int WPA_ASSERT (int ) ;
 struct wpabuf* eap_peer_tls_data_reassemble (struct eap_ssl_data*,struct wpabuf const*,int*) ;
 int eap_peer_tls_reset_input (struct eap_ssl_data*) ;
 scalar_t__ tls_connection_established (int ,int ) ;
 int tls_connection_get_failed (int ,int ) ;
 struct wpabuf* tls_connection_handshake (int ,int ,struct wpabuf const*,struct wpabuf**) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static int eap_tls_process_input(struct eap_sm *sm, struct eap_ssl_data *data,
     const struct wpabuf *in_data,
     struct wpabuf **out_data)
{
 const struct wpabuf *msg;
 int need_more_input;
 struct wpabuf *appl_data;

 msg = eap_peer_tls_data_reassemble(data, in_data, &need_more_input);
 if (msg == ((void*)0))
  return need_more_input ? 1 : -1;


 if (data->tls_out) {

  wpa_printf(MSG_INFO, "SSL: eap_tls_process_input - pending "
      "tls_out data even though tls_out_len = 0");
  wpabuf_free(data->tls_out);
  WPA_ASSERT(data->tls_out == ((void*)0));
 }
 appl_data = ((void*)0);
 data->tls_out = tls_connection_handshake(data->ssl_ctx, data->conn,
       msg, &appl_data);

 eap_peer_tls_reset_input(data);

 if (appl_data &&
     tls_connection_established(data->ssl_ctx, data->conn) &&
     !tls_connection_get_failed(data->ssl_ctx, data->conn)) {
  wpa_hexdump_buf_key(MSG_MSGDUMP, "SSL: Application data",
        appl_data);
  *out_data = appl_data;
  return 2;
 }

 wpabuf_free(appl_data);

 return 0;
}
