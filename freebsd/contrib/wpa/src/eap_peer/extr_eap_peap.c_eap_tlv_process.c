
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ crypto_binding; } ;
struct eap_method_ret {int methodState; void* decision; } ;


 void* DECISION_FAIL ;
 void* DECISION_UNCOND_SUCC ;

 int EAP_TLV_RESULT_FAILURE ;
 int EAP_TLV_RESULT_SUCCESS ;

 int EAP_TYPE_TLV ;
 int EAP_VENDOR_IETF ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ NO_BINDING ;
 scalar_t__ REQUIRE_BINDING ;
 int WPA_GET_BE16 (int const*) ;
 int eap_get_id (struct wpabuf const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_tlv_build_nak (int ,int) ;
 struct wpabuf* eap_tlv_build_result (struct eap_sm*,struct eap_peap_data*,int ,int ,int) ;
 scalar_t__ eap_tlv_validate_cryptobinding (struct eap_sm*,struct eap_peap_data*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_tlv_process(struct eap_sm *sm, struct eap_peap_data *data,
      struct eap_method_ret *ret,
      const struct wpabuf *req, struct wpabuf **resp,
      int force_failure)
{
 size_t left, tlv_len;
 const u8 *pos;
 const u8 *result_tlv = ((void*)0), *crypto_tlv = ((void*)0);
 size_t result_tlv_len = 0, crypto_tlv_len = 0;
 int tlv_type, mandatory;


 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_TLV, req, &left);
 if (pos == ((void*)0))
  return -1;
 wpa_hexdump(MSG_DEBUG, "EAP-TLV: Received TLVs", pos, left);
 while (left >= 4) {
  mandatory = !!(pos[0] & 0x80);
  tlv_type = WPA_GET_BE16(pos) & 0x3fff;
  pos += 2;
  tlv_len = WPA_GET_BE16(pos);
  pos += 2;
  left -= 4;
  if (tlv_len > left) {
   wpa_printf(MSG_DEBUG, "EAP-TLV: TLV underrun "
       "(tlv_len=%lu left=%lu)",
       (unsigned long) tlv_len,
       (unsigned long) left);
   return -1;
  }
  switch (tlv_type) {
  case 128:
   result_tlv = pos;
   result_tlv_len = tlv_len;
   break;
  case 129:
   crypto_tlv = pos;
   crypto_tlv_len = tlv_len;
   break;
  default:
   wpa_printf(MSG_DEBUG, "EAP-TLV: Unsupported TLV Type "
       "%d%s", tlv_type,
       mandatory ? " (mandatory)" : "");
   if (mandatory) {


    *resp = eap_tlv_build_nak(eap_get_id(req),
         tlv_type);
    return *resp == ((void*)0) ? -1 : 0;
   }

   break;
  }

  pos += tlv_len;
  left -= tlv_len;
 }
 if (left) {
  wpa_printf(MSG_DEBUG, "EAP-TLV: Last TLV too short in "
      "Request (left=%lu)", (unsigned long) left);
  return -1;
 }


 if (crypto_tlv && data->crypto_binding != NO_BINDING) {
  wpa_hexdump(MSG_DEBUG, "EAP-PEAP: Cryptobinding TLV",
       crypto_tlv, crypto_tlv_len);
  if (eap_tlv_validate_cryptobinding(sm, data, crypto_tlv - 4,
         crypto_tlv_len + 4) < 0) {
   if (result_tlv == ((void*)0))
    return -1;
   force_failure = 1;
   crypto_tlv = ((void*)0);


  }
 } else if (!crypto_tlv && data->crypto_binding == REQUIRE_BINDING) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: No cryptobinding TLV");
  return -1;
 }

 if (result_tlv) {
  int status, resp_status;
  wpa_hexdump(MSG_DEBUG, "EAP-TLV: Result TLV",
       result_tlv, result_tlv_len);
  if (result_tlv_len < 2) {
   wpa_printf(MSG_INFO, "EAP-TLV: Too short Result TLV "
       "(len=%lu)",
       (unsigned long) result_tlv_len);
   return -1;
  }
  status = WPA_GET_BE16(result_tlv);
  if (status == EAP_TLV_RESULT_SUCCESS) {
   wpa_printf(MSG_INFO, "EAP-TLV: TLV Result - Success "
       "- EAP-TLV/Phase2 Completed");
   if (force_failure) {
    wpa_printf(MSG_INFO, "EAP-TLV: Earlier failure"
        " - force failed Phase 2");
    resp_status = EAP_TLV_RESULT_FAILURE;
    ret->decision = DECISION_FAIL;
   } else {
    resp_status = EAP_TLV_RESULT_SUCCESS;
    ret->decision = DECISION_UNCOND_SUCC;
   }
  } else if (status == EAP_TLV_RESULT_FAILURE) {
   wpa_printf(MSG_INFO, "EAP-TLV: TLV Result - Failure");
   resp_status = EAP_TLV_RESULT_FAILURE;
   ret->decision = DECISION_FAIL;
  } else {
   wpa_printf(MSG_INFO, "EAP-TLV: Unknown TLV Result "
       "Status %d", status);
   resp_status = EAP_TLV_RESULT_FAILURE;
   ret->decision = DECISION_FAIL;
  }
  ret->methodState = METHOD_DONE;

  *resp = eap_tlv_build_result(sm, data, crypto_tlv != ((void*)0),
          eap_get_id(req), resp_status);
 }

 return 0;
}
