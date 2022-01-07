
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {void* leap_done; } ;
struct eap_method_ret {void* ignore; int decision; int methodState; void* allowNotifications; } ;
struct eap_hdr {int code; int length; } ;


 int DECISION_FAIL ;



 void* FALSE ;
 int METHOD_MAY_CONT ;
 int MSG_INFO ;
 void* TRUE ;
 int be_to_host16 (int ) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 struct wpabuf* eap_leap_process_request (struct eap_sm*,void*,struct eap_method_ret*,struct wpabuf const*) ;
 struct wpabuf* eap_leap_process_response (struct eap_sm*,void*,struct eap_method_ret*,struct wpabuf const*) ;
 struct wpabuf* eap_leap_process_success (struct eap_sm*,void*,struct eap_method_ret*,struct wpabuf const*) ;
 int eap_sm_request_password (struct eap_sm*) ;
 int wpa_printf (int ,char*,...) ;
 struct eap_hdr* wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static struct wpabuf * eap_leap_process(struct eap_sm *sm, void *priv,
     struct eap_method_ret *ret,
     const struct wpabuf *reqData)
{
 const struct eap_hdr *eap;
 size_t password_len;
 const u8 *password;

 password = eap_get_config_password(sm, &password_len);
 if (password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-LEAP: Password not configured");
  eap_sm_request_password(sm);
  ret->ignore = TRUE;
  return ((void*)0);
 }







 eap = wpabuf_head(reqData);
 if (wpabuf_len(reqData) < sizeof(*eap) ||
     be_to_host16(eap->length) > wpabuf_len(reqData)) {
  wpa_printf(MSG_INFO, "EAP-LEAP: Invalid frame");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ret->ignore = FALSE;
 ret->allowNotifications = TRUE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;

 sm->leap_done = FALSE;

 switch (eap->code) {
 case 130:
  return eap_leap_process_request(sm, priv, ret, reqData);
 case 128:
  return eap_leap_process_success(sm, priv, ret, reqData);
 case 129:
  return eap_leap_process_response(sm, priv, ret, reqData);
 default:
  wpa_printf(MSG_INFO, "EAP-LEAP: Unexpected EAP code (%d) - "
      "ignored", eap->code);
  ret->ignore = TRUE;
  return ((void*)0);
 }
}
