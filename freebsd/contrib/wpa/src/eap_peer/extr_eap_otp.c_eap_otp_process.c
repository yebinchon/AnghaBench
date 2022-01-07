
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* allowNotifications; int decision; int methodState; void* ignore; } ;


 int DECISION_COND_SUCC ;
 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_OTP ;
 int EAP_VENDOR_IETF ;
 void* FALSE ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 void* TRUE ;
 int eap_clear_config_otp (struct eap_sm*) ;
 int * eap_get_config_otp (struct eap_sm*,size_t*) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 int eap_get_id (struct wpabuf const*) ;
 int * eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 int eap_sm_request_otp (struct eap_sm*,char const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_hexdump_ascii_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_otp_process(struct eap_sm *sm, void *priv,
           struct eap_method_ret *ret,
           const struct wpabuf *reqData)
{
 struct wpabuf *resp;
 const u8 *pos, *password;
 size_t password_len, len;
 int otp;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_OTP, reqData, &len);
 if (pos == ((void*)0)) {
  ret->ignore = TRUE;
  return ((void*)0);
 }
 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-OTP: Request message",
     pos, len);

 password = eap_get_config_otp(sm, &password_len);
 if (password)
  otp = 1;
 else {
  password = eap_get_config_password(sm, &password_len);
  otp = 0;
 }

 if (password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-OTP: Password not configured");
  eap_sm_request_otp(sm, (const char *) pos, len);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ret->ignore = FALSE;

 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_COND_SUCC;
 ret->allowNotifications = FALSE;

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_OTP, password_len,
        EAP_CODE_RESPONSE, eap_get_id(reqData));
 if (resp == ((void*)0))
  return ((void*)0);
 wpabuf_put_data(resp, password, password_len);
 wpa_hexdump_ascii_key(MSG_MSGDUMP, "EAP-OTP: Response",
         password, password_len);

 if (otp) {
  wpa_printf(MSG_DEBUG, "EAP-OTP: Forgetting used password");
  eap_clear_config_otp(sm);
 }

 return resp;
}
