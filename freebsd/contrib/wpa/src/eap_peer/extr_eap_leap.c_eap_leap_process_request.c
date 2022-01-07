
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* ignore; } ;
struct eap_leap_data {int state; int peer_response; int peer_challenge; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_LEAP ;
 int EAP_VENDOR_IETF ;
 scalar_t__ LEAP_CHALLENGE_LEN ;
 scalar_t__ const LEAP_RESPONSE_LEN ;
 scalar_t__ const LEAP_VERSION ;
 int LEAP_WAIT_SUCCESS ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int MSG_WARNING ;
 void* TRUE ;
 scalar_t__ challenge_response (scalar_t__ const*,scalar_t__ const*,scalar_t__*) ;
 scalar_t__* eap_get_config_identity (struct eap_sm*,size_t*) ;
 scalar_t__* eap_get_config_password2 (struct eap_sm*,size_t*,int*) ;
 int eap_get_id (struct wpabuf const*) ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,scalar_t__ const,int ,int ) ;
 scalar_t__ nt_challenge_response (scalar_t__ const*,scalar_t__ const*,size_t,scalar_t__*) ;
 int os_memcpy (int ,scalar_t__ const*,scalar_t__ const) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,scalar_t__ const) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;
 scalar_t__* wpabuf_put (struct wpabuf*,scalar_t__ const) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__ const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__ const) ;

__attribute__((used)) static struct wpabuf * eap_leap_process_request(struct eap_sm *sm, void *priv,
      struct eap_method_ret *ret,
      const struct wpabuf *reqData)
{
 struct eap_leap_data *data = priv;
 struct wpabuf *resp;
 const u8 *pos, *challenge, *identity, *password;
 u8 challenge_len, *rpos;
 size_t identity_len, password_len, len;
 int pwhash;

 wpa_printf(MSG_DEBUG, "EAP-LEAP: Processing EAP-Request");

 identity = eap_get_config_identity(sm, &identity_len);
 password = eap_get_config_password2(sm, &password_len, &pwhash);
 if (identity == ((void*)0) || password == ((void*)0))
  return ((void*)0);

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_LEAP, reqData, &len);
 if (pos == ((void*)0) || len < 3) {
  wpa_printf(MSG_INFO, "EAP-LEAP: Invalid EAP-Request frame");
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

 challenge_len = *pos++;
 if (challenge_len != LEAP_CHALLENGE_LEN || challenge_len > len - 3) {
  wpa_printf(MSG_INFO, "EAP-LEAP: Invalid challenge "
      "(challenge_len=%d reqDataLen=%lu)",
      challenge_len, (unsigned long) wpabuf_len(reqData));
  ret->ignore = TRUE;
  return ((void*)0);
 }
 challenge = pos;
 os_memcpy(data->peer_challenge, challenge, LEAP_CHALLENGE_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-LEAP: Challenge from AP",
      challenge, LEAP_CHALLENGE_LEN);

 wpa_printf(MSG_DEBUG, "EAP-LEAP: Generating Challenge Response");

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_LEAP,
        3 + LEAP_RESPONSE_LEN + identity_len,
        EAP_CODE_RESPONSE, eap_get_id(reqData));
 if (resp == ((void*)0))
  return ((void*)0);
 wpabuf_put_u8(resp, LEAP_VERSION);
 wpabuf_put_u8(resp, 0);
 wpabuf_put_u8(resp, LEAP_RESPONSE_LEN);
 rpos = wpabuf_put(resp, LEAP_RESPONSE_LEN);
 if ((pwhash && challenge_response(challenge, password, rpos)) ||
     (!pwhash &&
      nt_challenge_response(challenge, password, password_len, rpos))) {
  wpa_printf(MSG_DEBUG, "EAP-LEAP: Failed to derive response");
  ret->ignore = TRUE;
  wpabuf_free(resp);
  return ((void*)0);
 }
 os_memcpy(data->peer_response, rpos, LEAP_RESPONSE_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-LEAP: Response",
      rpos, LEAP_RESPONSE_LEN);
 wpabuf_put_data(resp, identity, identity_len);

 data->state = LEAP_WAIT_SUCCESS;

 return resp;
}
