
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_tlv_hdr {int dummy; } ;
struct eap_tlv_crypto_binding_tlv {int dummy; } ;
struct eap_fast_tlv_parse {void* iresult; size_t eap_payload_tlv_len; void* result; int crypto_binding_len; size_t pac_len; int * pac; void* request_action; struct eap_tlv_crypto_binding_tlv* crypto_binding; int * eap_payload_tlv; } ;







 void* EAP_TLV_RESULT_FAILURE ;
 void* EAP_TLV_RESULT_SUCCESS ;

 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 void* WPA_GET_BE16 (int *) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;

int eap_fast_parse_tlv(struct eap_fast_tlv_parse *tlv,
         int tlv_type, u8 *pos, size_t len)
{
 switch (tlv_type) {
 case 132:
  wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: EAP-Payload TLV",
       pos, len);
  if (tlv->eap_payload_tlv) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: More than one "
       "EAP-Payload TLV in the message");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  tlv->eap_payload_tlv = pos;
  tlv->eap_payload_tlv_len = len;
  break;
 case 128:
  wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Result TLV", pos, len);
  if (tlv->result) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: More than one "
       "Result TLV in the message");
   tlv->result = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  if (len < 2) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Too short "
       "Result TLV");
   tlv->result = EAP_TLV_RESULT_FAILURE;
   break;
  }
  tlv->result = WPA_GET_BE16(pos);
  if (tlv->result != EAP_TLV_RESULT_SUCCESS &&
      tlv->result != EAP_TLV_RESULT_FAILURE) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Unknown Result %d",
       tlv->result);
   tlv->result = EAP_TLV_RESULT_FAILURE;
  }
  wpa_printf(MSG_DEBUG, "EAP-FAST: Result: %s",
      tlv->result == EAP_TLV_RESULT_SUCCESS ?
      "Success" : "Failure");
  break;
 case 131:
  wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Intermediate Result TLV",
       pos, len);
  if (len < 2) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Too short "
       "Intermediate-Result TLV");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   break;
  }
  if (tlv->iresult) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: More than one "
       "Intermediate-Result TLV in the message");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  tlv->iresult = WPA_GET_BE16(pos);
  if (tlv->iresult != EAP_TLV_RESULT_SUCCESS &&
      tlv->iresult != EAP_TLV_RESULT_FAILURE) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Unknown Intermediate "
       "Result %d", tlv->iresult);
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
  }
  wpa_printf(MSG_DEBUG, "EAP-FAST: Intermediate Result: %s",
      tlv->iresult == EAP_TLV_RESULT_SUCCESS ?
      "Success" : "Failure");
  break;
 case 133:
  wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Crypto-Binding TLV",
       pos, len);
  if (tlv->crypto_binding) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: More than one "
       "Crypto-Binding TLV in the message");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  tlv->crypto_binding_len = sizeof(struct eap_tlv_hdr) + len;
  if (tlv->crypto_binding_len < sizeof(*tlv->crypto_binding)) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Too short "
       "Crypto-Binding TLV");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  tlv->crypto_binding = (struct eap_tlv_crypto_binding_tlv *)
   (pos - sizeof(struct eap_tlv_hdr));
  break;
 case 129:
  wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Request-Action TLV",
       pos, len);
  if (tlv->request_action) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: More than one "
       "Request-Action TLV in the message");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  if (len < 2) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: Too short "
       "Request-Action TLV");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   break;
  }
  tlv->request_action = WPA_GET_BE16(pos);
  wpa_printf(MSG_DEBUG, "EAP-FAST: Request-Action: %d",
      tlv->request_action);
  break;
 case 130:
  wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: PAC TLV", pos, len);
  if (tlv->pac) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: More than one "
       "PAC TLV in the message");
   tlv->iresult = EAP_TLV_RESULT_FAILURE;
   return -2;
  }
  tlv->pac = pos;
  tlv->pac_len = len;
  break;
 default:

  return -1;
 }

 return 0;
}
