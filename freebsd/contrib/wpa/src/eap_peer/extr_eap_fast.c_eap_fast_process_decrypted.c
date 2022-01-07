
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int expected_failure; } ;
struct eap_method_ret {int decision; void* methodState; } ;
struct eap_fast_tlv_parse {scalar_t__ result; scalar_t__ iresult; scalar_t__ crypto_binding; scalar_t__ pac; int pac_len; int eap_payload_tlv_len; scalar_t__ eap_payload_tlv; int crypto_binding_len; } ;
struct eap_fast_data {scalar_t__ provisioning; scalar_t__ anon_provisioning; scalar_t__ phase2_success; int * current_pac; } ;


 int DECISION_FAIL ;
 int DECISION_UNCOND_SUCC ;
 scalar_t__ EAP_TLV_RESULT_FAILURE ;
 scalar_t__ EAP_TLV_RESULT_SUCCESS ;
 void* METHOD_DONE ;
 void* METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int eap_fast_encrypt_response (struct eap_sm*,struct eap_fast_data*,struct wpabuf*,int ,struct wpabuf**) ;
 struct wpabuf* eap_fast_pac_request () ;
 scalar_t__ eap_fast_parse_decrypted (struct wpabuf*,struct eap_fast_tlv_parse*,struct wpabuf**) ;
 struct wpabuf* eap_fast_process_crypto_binding (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,scalar_t__,int ) ;
 struct wpabuf* eap_fast_process_eap_payload_tlv (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,scalar_t__,int ) ;
 struct wpabuf* eap_fast_process_pac (struct eap_sm*,struct eap_fast_data*,struct eap_method_ret*,scalar_t__,int ) ;
 struct wpabuf* eap_fast_tlv_result (scalar_t__,int) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct wpabuf* wpabuf_concat (struct wpabuf*,struct wpabuf*) ;

__attribute__((used)) static int eap_fast_process_decrypted(struct eap_sm *sm,
          struct eap_fast_data *data,
          struct eap_method_ret *ret,
          u8 identifier,
          struct wpabuf *decrypted,
          struct wpabuf **out_data)
{
 struct wpabuf *resp = ((void*)0), *tmp;
 struct eap_fast_tlv_parse tlv;
 int failed = 0;

 if (eap_fast_parse_decrypted(decrypted, &tlv, &resp) < 0)
  return 0;
 if (resp)
  return eap_fast_encrypt_response(sm, data, resp,
       identifier, out_data);

 if (tlv.result == EAP_TLV_RESULT_FAILURE) {
  resp = eap_fast_tlv_result(EAP_TLV_RESULT_FAILURE, 0);
  return eap_fast_encrypt_response(sm, data, resp,
       identifier, out_data);
 }

 if (tlv.iresult == EAP_TLV_RESULT_FAILURE) {
  resp = eap_fast_tlv_result(EAP_TLV_RESULT_FAILURE, 1);
  return eap_fast_encrypt_response(sm, data, resp,
       identifier, out_data);
 }

 if (tlv.crypto_binding) {
  tmp = eap_fast_process_crypto_binding(sm, data, ret,
            tlv.crypto_binding,
            tlv.crypto_binding_len);
  if (tmp == ((void*)0))
   failed = 1;
  else
   resp = wpabuf_concat(resp, tmp);
 }

 if (tlv.iresult == EAP_TLV_RESULT_SUCCESS) {
  tmp = eap_fast_tlv_result(failed ? EAP_TLV_RESULT_FAILURE :
       EAP_TLV_RESULT_SUCCESS, 1);
  resp = wpabuf_concat(resp, tmp);
 }

 if (tlv.eap_payload_tlv) {
  tmp = eap_fast_process_eap_payload_tlv(
   sm, data, ret, tlv.eap_payload_tlv,
   tlv.eap_payload_tlv_len);
  resp = wpabuf_concat(resp, tmp);
 }

 if (tlv.pac && tlv.result != EAP_TLV_RESULT_SUCCESS) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC TLV without Result TLV "
      "acknowledging success");
  failed = 1;
 } else if (tlv.pac && tlv.result == EAP_TLV_RESULT_SUCCESS) {
  tmp = eap_fast_process_pac(sm, data, ret, tlv.pac,
        tlv.pac_len);
  resp = wpabuf_concat(resp, tmp);
 }

 if (data->current_pac == ((void*)0) && data->provisioning &&
     !data->anon_provisioning && !tlv.pac &&
     (tlv.iresult == EAP_TLV_RESULT_SUCCESS ||
      tlv.result == EAP_TLV_RESULT_SUCCESS)) {




  wpa_printf(MSG_DEBUG, "EAP-FAST: Request Tunnel PAC");
  tmp = eap_fast_pac_request();
  resp = wpabuf_concat(resp, tmp);
 }

 if (tlv.result == EAP_TLV_RESULT_SUCCESS && !failed) {
  tmp = eap_fast_tlv_result(EAP_TLV_RESULT_SUCCESS, 0);
  resp = wpabuf_concat(tmp, resp);
 } else if (failed) {
  tmp = eap_fast_tlv_result(EAP_TLV_RESULT_FAILURE, 0);
  resp = wpabuf_concat(tmp, resp);
 }

 if (resp && tlv.result == EAP_TLV_RESULT_SUCCESS && !failed &&
     tlv.crypto_binding && data->phase2_success) {
  if (data->anon_provisioning) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Unauthenticated "
       "provisioning completed successfully.");
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_FAIL;
   sm->expected_failure = 1;
  } else {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Authentication "
       "completed successfully.");
   if (data->provisioning)
    ret->methodState = METHOD_MAY_CONT;
   else
    ret->methodState = METHOD_DONE;
   ret->decision = DECISION_UNCOND_SUCC;
  }
 }

 if (resp == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: No recognized TLVs - send "
      "empty response packet");
  resp = wpabuf_alloc(1);
 }

 return eap_fast_encrypt_response(sm, data, resp, identifier,
      out_data);
}
