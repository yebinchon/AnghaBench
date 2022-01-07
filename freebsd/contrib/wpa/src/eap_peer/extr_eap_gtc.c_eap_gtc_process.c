
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* allowNotifications; int decision; int methodState; void* ignore; } ;
struct eap_hdr {int dummy; } ;
struct eap_gtc_data {scalar_t__ prefix; } ;


 int DECISION_COND_SUCC ;
 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_GTC ;
 int EAP_VENDOR_IETF ;
 void* FALSE ;
 int METHOD_DONE ;
 int METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 void* TRUE ;
 int eap_clear_config_otp (struct eap_sm*) ;
 char* eap_get_config_identity (struct eap_sm*,size_t*) ;
 char* eap_get_config_otp (struct eap_sm*,size_t*) ;
 char* eap_get_config_password (struct eap_sm*,size_t*) ;
 char eap_get_id (struct wpabuf const*) ;
 char* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,char) ;
 int eap_sm_request_otp (struct eap_sm*,char const*,size_t) ;
 scalar_t__ os_memcmp (char const*,char*,int) ;
 int wpa_hexdump_ascii (int ,char*,char const*,size_t) ;
 int wpa_hexdump_ascii_key (int ,char*,scalar_t__,size_t) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,char const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;

__attribute__((used)) static struct wpabuf * eap_gtc_process(struct eap_sm *sm, void *priv,
           struct eap_method_ret *ret,
           const struct wpabuf *reqData)
{
 struct eap_gtc_data *data = priv;
 struct wpabuf *resp;
 const u8 *pos, *password, *identity;
 size_t password_len, identity_len, len, plen;
 int otp;
 u8 id;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_GTC, reqData, &len);
 if (pos == ((void*)0)) {
  ret->ignore = TRUE;
  return ((void*)0);
 }
 id = eap_get_id(reqData);

 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-GTC: Request message", pos, len);
 if (data->prefix &&
     (len < 10 || os_memcmp(pos, "CHALLENGE=", 10) != 0)) {
  wpa_printf(MSG_DEBUG, "EAP-GTC: Challenge did not start with "
      "expected prefix");





  resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GTC,
         0, EAP_CODE_RESPONSE, id);
  return resp;
 }

 password = eap_get_config_otp(sm, &password_len);
 if (password)
  otp = 1;
 else {
  password = eap_get_config_password(sm, &password_len);
  otp = 0;
 }

 if (password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-GTC: Password not configured");
  eap_sm_request_otp(sm, (const char *) pos, len);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ret->ignore = FALSE;

 ret->methodState = data->prefix ? METHOD_MAY_CONT : METHOD_DONE;
 ret->decision = DECISION_COND_SUCC;
 ret->allowNotifications = FALSE;

 plen = password_len;
 identity = eap_get_config_identity(sm, &identity_len);
 if (identity == ((void*)0))
  return ((void*)0);
 if (data->prefix)
  plen += 9 + identity_len + 1;
 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GTC, plen,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);
 if (data->prefix) {
  wpabuf_put_data(resp, "RESPONSE=", 9);
  wpabuf_put_data(resp, identity, identity_len);
  wpabuf_put_u8(resp, '\0');
 }
 wpabuf_put_data(resp, password, password_len);
 wpa_hexdump_ascii_key(MSG_MSGDUMP, "EAP-GTC: Response",
         wpabuf_head_u8(resp) + sizeof(struct eap_hdr) +
         1, plen);

 if (otp) {
  wpa_printf(MSG_DEBUG, "EAP-GTC: Forgetting used password");
  eap_clear_config_otp(sm);
 }

 return resp;
}
