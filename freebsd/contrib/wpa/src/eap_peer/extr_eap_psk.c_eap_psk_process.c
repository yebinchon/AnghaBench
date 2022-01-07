
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_psk_data {int state; } ;
struct eap_method_ret {scalar_t__ methodState; void* allowNotifications; void* ignore; int decision; } ;


 int DECISION_FAIL ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 void* FALSE ;
 scalar_t__ METHOD_DONE ;
 scalar_t__ METHOD_MAY_CONT ;
 int MSG_DEBUG ;



 void* TRUE ;
 int * eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_psk_process_1 (struct eap_psk_data*,struct eap_method_ret*,struct wpabuf const*) ;
 struct wpabuf* eap_psk_process_3 (struct eap_psk_data*,struct eap_method_ret*,struct wpabuf const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_psk_process(struct eap_sm *sm, void *priv,
           struct eap_method_ret *ret,
           const struct wpabuf *reqData)
{
 struct eap_psk_data *data = priv;
 const u8 *pos;
 struct wpabuf *resp = ((void*)0);
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PSK, reqData, &len);
 if (pos == ((void*)0)) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ret->ignore = FALSE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = TRUE;

 switch (data->state) {
 case 129:
  resp = eap_psk_process_1(data, ret, reqData);
  break;
 case 128:
  resp = eap_psk_process_3(data, ret, reqData);
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "EAP-PSK: in DONE state - ignore "
      "unexpected message");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (ret->methodState == METHOD_DONE) {
  ret->allowNotifications = FALSE;
 }

 return resp;
}
