
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_ttls_data {int phase2_start; struct wpabuf* pending_phase2_req; scalar_t__ resuming; TYPE_1__ ssl; struct wpabuf* pending_resp; int ttls_version; } ;
struct eap_sm {int ssl_ctx; scalar_t__ waiting_ext_cert_check; } ;
struct eap_peer_config {scalar_t__ pending_ext_cert_check; } ;
struct eap_method_ret {void* methodState; void* decision; } ;


 void* DECISION_COND_SUCC ;
 void* DECISION_FAIL ;
 int EAP_TYPE_TTLS ;
 scalar_t__ EXT_CERT_CHECK_BAD ;
 scalar_t__ EXT_CERT_CHECK_GOOD ;
 void* METHOD_DONE ;
 void* METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int eap_peer_tls_process_helper (struct eap_sm*,TYPE_1__*,int ,int ,int ,struct wpabuf const*,struct wpabuf**) ;
 int eap_ttls_decrypt (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int ,struct wpabuf const*,struct wpabuf**) ;
 int eap_ttls_v0_derive_key (struct eap_sm*,struct eap_ttls_data*) ;
 scalar_t__ tls_connection_established (int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int eap_ttls_process_handshake(struct eap_sm *sm,
          struct eap_ttls_data *data,
          struct eap_method_ret *ret,
          u8 identifier,
          const struct wpabuf *in_data,
          struct wpabuf **out_data)
{
 int res;

 if (sm->waiting_ext_cert_check && data->pending_resp) {
  struct eap_peer_config *config = eap_get_config(sm);

  if (config->pending_ext_cert_check == EXT_CERT_CHECK_GOOD) {
   wpa_printf(MSG_DEBUG,
       "EAP-TTLS: External certificate check succeeded - continue handshake");
   *out_data = data->pending_resp;
   data->pending_resp = ((void*)0);
   sm->waiting_ext_cert_check = 0;
   return 0;
  }

  if (config->pending_ext_cert_check == EXT_CERT_CHECK_BAD) {
   wpa_printf(MSG_DEBUG,
       "EAP-TTLS: External certificate check failed - force authentication failure");
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_FAIL;
   sm->waiting_ext_cert_check = 0;
   return 0;
  }

  wpa_printf(MSG_DEBUG,
      "EAP-TTLS: Continuing to wait external server certificate validation");
  return 0;
 }

 res = eap_peer_tls_process_helper(sm, &data->ssl, EAP_TYPE_TTLS,
       data->ttls_version, identifier,
       in_data, out_data);
 if (res < 0) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: TLS processing failed");
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return -1;
 }

 if (sm->waiting_ext_cert_check) {
  wpa_printf(MSG_DEBUG,
      "EAP-TTLS: Waiting external server certificate validation");
  wpabuf_clear_free(data->pending_resp);
  data->pending_resp = *out_data;
  *out_data = ((void*)0);
  return 0;
 }

 if (tls_connection_established(sm->ssl_ctx, data->ssl.conn)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: TLS done, proceed to "
      "Phase 2");
  if (data->resuming) {
   wpa_printf(MSG_DEBUG, "EAP-TTLS: fast reauth - may "
       "skip Phase 2");
   ret->decision = DECISION_COND_SUCC;
   ret->methodState = METHOD_MAY_CONT;
  }
  data->phase2_start = 1;
  eap_ttls_v0_derive_key(sm, data);

  if (*out_data == ((void*)0) || wpabuf_len(*out_data) == 0) {
   if (eap_ttls_decrypt(sm, data, ret, identifier,
          ((void*)0), out_data)) {
    wpa_printf(MSG_WARNING, "EAP-TTLS: "
        "failed to process early "
        "start for Phase 2");
   }
   res = 0;
  }
  data->resuming = 0;
 }

 if (res == 2) {



  wpabuf_clear_free(data->pending_phase2_req);
  data->pending_phase2_req = *out_data;
  *out_data = ((void*)0);
  res = eap_ttls_decrypt(sm, data, ret, identifier, in_data,
           out_data);
 }

 return res;
}
