
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct teap_tlv_hdr {int dummy; } ;
struct teap_tlv_crypto_binding {int dummy; } ;
struct eap_teap_tlv_parse {void* result; void** nak; size_t nak_len; void* iresult; void** eap_payload_tlv; size_t eap_payload_tlv_len; void** pac; size_t pac_len; int crypto_binding_len; void** basic_auth_req; size_t basic_auth_req_len; void** basic_auth_resp; size_t basic_auth_resp_len; struct teap_tlv_crypto_binding* crypto_binding; void* request_action; void* request_action_status; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 void* TEAP_STATUS_FAILURE ;
 void* TEAP_STATUS_SUCCESS ;
 void* WPA_GET_BE16 (void**) ;
 int wpa_hexdump (int ,char*,void**,size_t) ;
 int wpa_hexdump_ascii (int ,char*,void**,size_t) ;
 int wpa_printf (int ,char*,...) ;

int eap_teap_parse_tlv(struct eap_teap_tlv_parse *tlv,
         int tlv_type, u8 *pos, size_t len)
{
 switch (tlv_type) {
 case 128:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: Result TLV", pos, len);
  if (tlv->result) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one Result TLV in the message");
   tlv->result = TEAP_STATUS_FAILURE;
   return -2;
  }
  if (len < 2) {
   wpa_printf(MSG_INFO, "EAP-TEAP: Too short Result TLV");
   tlv->result = TEAP_STATUS_FAILURE;
   break;
  }
  tlv->result = WPA_GET_BE16(pos);
  if (tlv->result != TEAP_STATUS_SUCCESS &&
      tlv->result != TEAP_STATUS_FAILURE) {
   wpa_printf(MSG_INFO, "EAP-TEAP: Unknown Result %d",
       tlv->result);
   tlv->result = TEAP_STATUS_FAILURE;
  }
  wpa_printf(MSG_DEBUG, "EAP-TEAP: Result: %s",
      tlv->result == TEAP_STATUS_SUCCESS ?
      "Success" : "Failure");
  break;
 case 131:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: NAK TLV", pos, len);
  if (len < 6) {
   wpa_printf(MSG_INFO, "EAP-TEAP: Too short NAK TLV");
   tlv->result = TEAP_STATUS_FAILURE;
   break;
  }
  tlv->nak = pos;
  tlv->nak_len = len;
  break;
 case 129:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: Request-Action TLV",
       pos, len);
  if (tlv->request_action) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one Request-Action TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  if (len < 2) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Too short Request-Action TLV");
   tlv->iresult = TEAP_STATUS_FAILURE;
   break;
  }
  tlv->request_action_status = pos[0];
  tlv->request_action = pos[1];
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Request-Action: Status=%u Action=%u",
      tlv->request_action_status, tlv->request_action);
  break;
 case 133:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: EAP-Payload TLV",
       pos, len);
  if (tlv->eap_payload_tlv) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one EAP-Payload TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->eap_payload_tlv = pos;
  tlv->eap_payload_tlv_len = len;
  break;
 case 132:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: Intermediate-Result TLV",
       pos, len);
  if (len < 2) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Too short Intermediate-Result TLV");
   tlv->iresult = TEAP_STATUS_FAILURE;
   break;
  }
  if (tlv->iresult) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one Intermediate-Result TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->iresult = WPA_GET_BE16(pos);
  if (tlv->iresult != TEAP_STATUS_SUCCESS &&
      tlv->iresult != TEAP_STATUS_FAILURE) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Unknown Intermediate Result %d",
       tlv->iresult);
   tlv->iresult = TEAP_STATUS_FAILURE;
  }
  wpa_printf(MSG_DEBUG, "EAP-TEAP: Intermediate Result: %s",
      tlv->iresult == TEAP_STATUS_SUCCESS ?
      "Success" : "Failure");
  break;
 case 130:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: PAC TLV", pos, len);
  if (tlv->pac) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one PAC TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->pac = pos;
  tlv->pac_len = len;
  break;
 case 134:
  wpa_hexdump(MSG_MSGDUMP, "EAP-TEAP: Crypto-Binding TLV",
       pos, len);
  if (tlv->crypto_binding) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one Crypto-Binding TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->crypto_binding_len = sizeof(struct teap_tlv_hdr) + len;
  if (tlv->crypto_binding_len < sizeof(*tlv->crypto_binding)) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Too short Crypto-Binding TLV");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->crypto_binding = (struct teap_tlv_crypto_binding *)
   (pos - sizeof(struct teap_tlv_hdr));
  break;
 case 136:
  wpa_hexdump_ascii(MSG_MSGDUMP,
      "EAP-TEAP: Basic-Password-Auth-Req TLV",
      pos, len);
  if (tlv->basic_auth_req) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one Basic-Password-Auth-Req TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->basic_auth_req = pos;
  tlv->basic_auth_req_len = len;
  break;
 case 135:
  wpa_hexdump_ascii(MSG_MSGDUMP,
      "EAP-TEAP: Basic-Password-Auth-Resp TLV",
      pos, len);
  if (tlv->basic_auth_resp) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: More than one Basic-Password-Auth-Resp TLV in the message");
   tlv->iresult = TEAP_STATUS_FAILURE;
   return -2;
  }
  tlv->basic_auth_resp = pos;
  tlv->basic_auth_resp_len = len;
  break;
 default:

  return -1;
 }

 return 0;
}
