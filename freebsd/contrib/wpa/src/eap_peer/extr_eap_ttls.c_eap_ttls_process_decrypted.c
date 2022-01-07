
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ttls_parse_avp {int eapdata; } ;
struct eap_ttls_data {int phase2_type; int ready_for_tnc; int pending_phase2_req; int phase2_success; scalar_t__ tnc_started; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_new_password; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {int methodState; } ;
typedef enum phase2_types { ____Placeholder_phase2_types } phase2_types ;







 int METHOD_MAY_CONT ;
 int MSG_INFO ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 scalar_t__ eap_ttls_encrypt_response (struct eap_sm*,struct eap_ttls_data*,struct wpabuf*,int ,struct wpabuf**) ;
 int eap_ttls_process_phase2_eap (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct ttls_parse_avp*,struct wpabuf**) ;
 int eap_ttls_process_phase2_mschapv2 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct ttls_parse_avp*) ;
 int eap_ttls_process_tnc_start (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct ttls_parse_avp*,struct wpabuf**) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_clear_free (int ) ;
 int wpabuf_dup (struct wpabuf*) ;

__attribute__((used)) static int eap_ttls_process_decrypted(struct eap_sm *sm,
          struct eap_ttls_data *data,
          struct eap_method_ret *ret,
          u8 identifier,
          struct ttls_parse_avp *parse,
          struct wpabuf *in_decrypted,
          struct wpabuf **out_data)
{
 struct wpabuf *resp = ((void*)0);
 struct eap_peer_config *config = eap_get_config(sm);
 int res;
 enum phase2_types phase2_type = data->phase2_type;






 switch (phase2_type) {
 case 131:
  if (eap_ttls_process_phase2_eap(sm, data, ret, parse, &resp) <
      0)
   return -1;
  break;
 case 129:
  res = eap_ttls_process_phase2_mschapv2(sm, data, ret, parse);
  return res;
 case 130:
 case 128:
 case 132:
  wpa_printf(MSG_INFO, "EAP-TTLS: Phase 2 received unexpected "
      "tunneled data");
  return -1;

 }

 if (resp) {
  if (eap_ttls_encrypt_response(sm, data, resp, identifier,
           out_data) < 0)
   return -1;
 } else if (config->pending_req_identity ||
     config->pending_req_password ||
     config->pending_req_otp ||
     config->pending_req_new_password ||
     config->pending_req_sim) {
  wpabuf_clear_free(data->pending_phase2_req);
  data->pending_phase2_req = wpabuf_dup(in_decrypted);
 }

 return 0;
}
