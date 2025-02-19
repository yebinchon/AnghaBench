
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int conn; struct wpabuf* tls_out; } ;
struct eap_tls_data {int eap_type; TYPE_1__ ssl; int ssl_ctx; struct wpabuf* pending_resp; } ;
struct eap_sm {scalar_t__ waiting_ext_cert_check; } ;
struct eap_peer_config {scalar_t__ pending_ext_cert_check; } ;
struct eap_method_ret {int decision; int methodState; } ;


 int DECISION_FAIL ;
 int EAP_TLS_FLAGS_START ;
 scalar_t__ EXT_CERT_CHECK_BAD ;
 scalar_t__ EXT_CERT_CHECK_GOOD ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int eap_get_id (struct wpabuf const*) ;
 struct wpabuf* eap_peer_tls_build_ack (int,int ,int ) ;
 int eap_peer_tls_process_helper (struct eap_sm*,TYPE_1__*,int ,int ,int,struct wpabuf*,struct wpabuf**) ;
 int* eap_peer_tls_process_init (struct eap_sm*,TYPE_1__*,int ,struct eap_method_ret*,struct wpabuf const*,size_t*,int*) ;
 int eap_peer_tls_reset_output (TYPE_1__*) ;
 struct wpabuf* eap_tls_failure (struct eap_sm*,struct eap_tls_data*,struct eap_method_ret*,int,struct wpabuf*,int) ;
 int eap_tls_success (struct eap_sm*,struct eap_tls_data*,struct eap_method_ret*) ;
 scalar_t__ tls_connection_established (int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_set (struct wpabuf*,int const*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_tls_process(struct eap_sm *sm, void *priv,
           struct eap_method_ret *ret,
           const struct wpabuf *reqData)
{
 size_t left;
 int res;
 struct wpabuf *resp;
 u8 flags, id;
 const u8 *pos;
 struct eap_tls_data *data = priv;
 struct wpabuf msg;

 if (sm->waiting_ext_cert_check && data->pending_resp) {
  struct eap_peer_config *config = eap_get_config(sm);

  if (config->pending_ext_cert_check == EXT_CERT_CHECK_GOOD) {
   wpa_printf(MSG_DEBUG,
       "EAP-TLS: External certificate check succeeded - continue handshake");
   resp = data->pending_resp;
   data->pending_resp = ((void*)0);
   sm->waiting_ext_cert_check = 0;
   return resp;
  }

  if (config->pending_ext_cert_check == EXT_CERT_CHECK_BAD) {
   wpa_printf(MSG_DEBUG,
       "EAP-TLS: External certificate check failed - force authentication failure");
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_FAIL;
   sm->waiting_ext_cert_check = 0;
   return ((void*)0);
  }

  wpa_printf(MSG_DEBUG,
      "EAP-TLS: Continuing to wait external server certificate validation");
  return ((void*)0);
 }

 pos = eap_peer_tls_process_init(sm, &data->ssl, data->eap_type, ret,
     reqData, &left, &flags);
 if (pos == ((void*)0))
  return ((void*)0);
 id = eap_get_id(reqData);

 if (flags & EAP_TLS_FLAGS_START) {
  wpa_printf(MSG_DEBUG, "EAP-TLS: Start");
  left = 0;

 }

 resp = ((void*)0);
 wpabuf_set(&msg, pos, left);
 res = eap_peer_tls_process_helper(sm, &data->ssl, data->eap_type, 0,
       id, &msg, &resp);

 if (res < 0) {
  return eap_tls_failure(sm, data, ret, res, resp, id);
 }

 if (sm->waiting_ext_cert_check) {
  wpa_printf(MSG_DEBUG,
      "EAP-TLS: Waiting external server certificate validation");
  wpabuf_free(data->pending_resp);
  data->pending_resp = resp;
  return ((void*)0);
 }

 if (res == 2) {


  wpa_hexdump_buf(MSG_DEBUG, "EAP-TLS: Received Application Data",
    resp);
  wpa_hexdump_buf(MSG_DEBUG, "EAP-TLS: Remaining tls_out data",
    data->ssl.tls_out);
  eap_peer_tls_reset_output(&data->ssl);

  res = 1;
 }

 if (tls_connection_established(data->ssl_ctx, data->ssl.conn))
  eap_tls_success(sm, data, ret);

 if (res == 1) {
  wpabuf_free(resp);
  return eap_peer_tls_build_ack(id, data->eap_type, 0);
 }

 return resp;
}
