
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_mschapv2_hdr {int mschapv2_id; } ;
struct eap_mschapv2_data {int * passwd_change_challenge; scalar_t__ passwd_change_challenge_valid; } ;
struct eap_method_ret {void* allowNotifications; int decision; int methodState; void* ignore; } ;


 int DECISION_FAIL ;
 void* FALSE ;
 int METHOD_MAY_CONT ;
 size_t MSCHAPV2_CHAL_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 void* TRUE ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 struct wpabuf* eap_mschapv2_challenge_reply (struct eap_sm*,struct eap_mschapv2_data*,int ,int ,int const*) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_mschapv2_challenge(
 struct eap_sm *sm, struct eap_mschapv2_data *data,
 struct eap_method_ret *ret, const struct eap_mschapv2_hdr *req,
 size_t req_len, u8 id)
{
 size_t len, challenge_len;
 const u8 *pos, *challenge;

 if (eap_get_config_identity(sm, &len) == ((void*)0) ||
     eap_get_config_password(sm, &len) == ((void*)0))
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Received challenge");
 if (req_len < sizeof(*req) + 1) {
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Too short challenge data "
      "(len %lu)", (unsigned long) req_len);
  ret->ignore = TRUE;
  return ((void*)0);
 }
 pos = (const u8 *) (req + 1);
 challenge_len = *pos++;
 len = req_len - sizeof(*req) - 1;
 if (challenge_len != MSCHAPV2_CHAL_LEN) {
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Invalid challenge length "
      "%lu", (unsigned long) challenge_len);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (len < challenge_len) {
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Too short challenge"
      " packet: len=%lu challenge_len=%lu",
      (unsigned long) len, (unsigned long) challenge_len);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (data->passwd_change_challenge_valid) {
  wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Using challenge from the "
      "failure message");
  challenge = data->passwd_change_challenge;
 } else
  challenge = pos;
 pos += challenge_len;
 len -= challenge_len;
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-MSCHAPV2: Authentication Servername",
      pos, len);

 ret->ignore = FALSE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = TRUE;

 return eap_mschapv2_challenge_reply(sm, data, id, req->mschapv2_id,
         challenge);
}
