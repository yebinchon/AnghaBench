
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {void* leap_done; } ;
struct eap_method_ret {int decision; int allowNotifications; int methodState; void* ignore; } ;
struct eap_leap_data {int state; int ap_challenge; int ap_response; } ;


 int DECISION_FAIL ;
 int DECISION_UNCOND_SUCC ;
 int EAP_TYPE_LEAP ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 int LEAP_DONE ;
 int LEAP_RESPONSE_LEN ;
 scalar_t__ const LEAP_VERSION ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 void* TRUE ;
 scalar_t__ challenge_response (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__* eap_get_config_password2 (struct eap_sm*,size_t*,int*) ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 scalar_t__ hash_nt_password_hash (scalar_t__ const*,scalar_t__*) ;
 scalar_t__ nt_password_hash (scalar_t__ const*,size_t,scalar_t__*) ;
 scalar_t__ os_memcmp_const (scalar_t__ const*,scalar_t__*,int) ;
 int os_memcpy (int ,scalar_t__ const*,int) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static struct wpabuf * eap_leap_process_response(struct eap_sm *sm, void *priv,
       struct eap_method_ret *ret,
       const struct wpabuf *reqData)
{
 struct eap_leap_data *data = priv;
 const u8 *pos, *password;
 u8 response_len, pw_hash[16], pw_hash_hash[16],
  expected[LEAP_RESPONSE_LEN];
 size_t password_len, len;
 int pwhash;

 wpa_printf(MSG_DEBUG, "EAP-LEAP: Processing EAP-Response");

 password = eap_get_config_password2(sm, &password_len, &pwhash);
 if (password == ((void*)0))
  return ((void*)0);

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_LEAP, reqData, &len);
 if (pos == ((void*)0) || len < 3) {
  wpa_printf(MSG_INFO, "EAP-LEAP: Invalid EAP-Response frame");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (*pos != LEAP_VERSION) {
  wpa_printf(MSG_WARNING, "EAP-LEAP: Unsupported LEAP version "
      "%d", *pos);
  ret->ignore = TRUE;
  return ((void*)0);
 }
 pos++;

 pos++;

 response_len = *pos++;
 if (response_len != LEAP_RESPONSE_LEN || response_len > len - 3) {
  wpa_printf(MSG_INFO, "EAP-LEAP: Invalid response "
      "(response_len=%d reqDataLen=%lu)",
      response_len, (unsigned long) wpabuf_len(reqData));
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpa_hexdump(MSG_DEBUG, "EAP-LEAP: Response from AP",
      pos, LEAP_RESPONSE_LEN);
 os_memcpy(data->ap_response, pos, LEAP_RESPONSE_LEN);

 if (pwhash) {
  if (hash_nt_password_hash(password, pw_hash_hash)) {
   ret->ignore = TRUE;
   return ((void*)0);
  }
 } else {
  if (nt_password_hash(password, password_len, pw_hash) ||
      hash_nt_password_hash(pw_hash, pw_hash_hash)) {
   ret->ignore = TRUE;
   return ((void*)0);
  }
 }
 if (challenge_response(data->ap_challenge, pw_hash_hash, expected)) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ret->methodState = METHOD_DONE;
 ret->allowNotifications = FALSE;

 if (os_memcmp_const(pos, expected, LEAP_RESPONSE_LEN) != 0) {
  wpa_printf(MSG_WARNING, "EAP-LEAP: AP sent an invalid "
      "response - authentication failed");
  wpa_hexdump(MSG_DEBUG, "EAP-LEAP: Expected response from AP",
       expected, LEAP_RESPONSE_LEN);
  ret->decision = DECISION_FAIL;
  return ((void*)0);
 }

 ret->decision = DECISION_UNCOND_SUCC;




 sm->leap_done = TRUE;
 data->state = LEAP_DONE;



 return ((void*)0);
}
