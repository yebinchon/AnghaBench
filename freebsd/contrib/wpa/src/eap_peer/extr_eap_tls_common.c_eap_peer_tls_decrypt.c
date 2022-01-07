
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_ssl_data {int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;


 int MSG_INFO ;
 struct wpabuf* eap_peer_tls_data_reassemble (struct eap_ssl_data*,struct wpabuf const*,int*) ;
 int eap_peer_tls_reset_input (struct eap_ssl_data*) ;
 struct wpabuf* tls_connection_decrypt (int ,int ,struct wpabuf const*) ;
 int wpa_printf (int ,char*) ;

int eap_peer_tls_decrypt(struct eap_sm *sm, struct eap_ssl_data *data,
    const struct wpabuf *in_data,
    struct wpabuf **in_decrypted)
{
 const struct wpabuf *msg;
 int need_more_input;

 msg = eap_peer_tls_data_reassemble(data, in_data, &need_more_input);
 if (msg == ((void*)0))
  return need_more_input ? 1 : -1;

 *in_decrypted = tls_connection_decrypt(data->ssl_ctx, data->conn, msg);
 eap_peer_tls_reset_input(data);
 if (*in_decrypted == ((void*)0)) {
  wpa_printf(MSG_INFO, "SSL: Failed to decrypt Phase 2 data");
  return -1;
 }
 return 0;
}
