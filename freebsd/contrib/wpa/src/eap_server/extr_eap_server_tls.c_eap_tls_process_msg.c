
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_3__ {int tls_out; int conn; scalar_t__ tls_v13; struct wpabuf* tls_in; } ;
struct eap_tls_data {scalar_t__ state; TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ SUCCESS ;
 struct wpabuf* eap_server_tls_encrypt (struct eap_sm*,TYPE_1__*,struct wpabuf*) ;
 scalar_t__ eap_server_tls_phase1 (struct eap_sm*,TYPE_1__*) ;
 int eap_tls_state (struct eap_tls_data*,int ) ;
 scalar_t__ tls_connection_established (int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (int ,struct wpabuf*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 scalar_t__ wpabuf_resize (int *,scalar_t__) ;

__attribute__((used)) static void eap_tls_process_msg(struct eap_sm *sm, void *priv,
    const struct wpabuf *respData)
{
 struct eap_tls_data *data = priv;
 if (data->state == SUCCESS && wpabuf_len(data->ssl.tls_in) == 0) {
  wpa_printf(MSG_DEBUG, "EAP-TLS: Client acknowledged final TLS "
      "handshake message");
  return;
 }
 if (eap_server_tls_phase1(sm, &data->ssl) < 0) {
  eap_tls_state(data, FAILURE);
  return;
 }

 if (data->ssl.tls_v13 &&
     tls_connection_established(sm->ssl_ctx, data->ssl.conn)) {
  struct wpabuf *plain, *encr;

  wpa_printf(MSG_DEBUG,
      "EAP-TLS: Send empty application data to indicate end of exchange");







  plain = wpabuf_alloc(1);
  if (!plain)
   return;
  wpabuf_put_u8(plain, 0);
  encr = eap_server_tls_encrypt(sm, &data->ssl, plain);
  wpabuf_free(plain);
  if (!encr)
   return;
  if (wpabuf_resize(&data->ssl.tls_out, wpabuf_len(encr)) < 0) {
   wpa_printf(MSG_INFO,
       "EAP-TLS: Failed to resize output buffer");
   wpabuf_free(encr);
   return;
  }
  wpabuf_put_buf(data->ssl.tls_out, encr);
  wpa_hexdump_buf(MSG_DEBUG,
    "EAP-TLS: Data appended to the message", encr);
  wpabuf_free(encr);
 }
}
