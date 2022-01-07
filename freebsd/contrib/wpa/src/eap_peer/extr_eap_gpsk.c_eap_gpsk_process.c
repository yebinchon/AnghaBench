
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* ignore; void* allowNotifications; int decision; int methodState; } ;
struct eap_gpsk_data {int dummy; } ;


 int DECISION_FAIL ;


 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 void* FALSE ;
 int METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 void* TRUE ;
 int eap_get_id (struct wpabuf const*) ;
 struct wpabuf* eap_gpsk_process_gpsk_1 (struct eap_sm*,struct eap_gpsk_data*,struct eap_method_ret*,int,int const*,size_t) ;
 struct wpabuf* eap_gpsk_process_gpsk_3 (struct eap_sm*,struct eap_gpsk_data*,struct eap_method_ret*,int,int const*,size_t) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_process(struct eap_sm *sm, void *priv,
     struct eap_method_ret *ret,
     const struct wpabuf *reqData)
{
 struct eap_gpsk_data *data = priv;
 struct wpabuf *resp;
 const u8 *pos;
 size_t len;
 u8 opcode, id;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_GPSK, reqData, &len);
 if (pos == ((void*)0) || len < 1) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 id = eap_get_id(reqData);
 opcode = *pos++;
 len--;
 wpa_printf(MSG_DEBUG, "EAP-GPSK: Received frame: opcode %d", opcode);

 ret->ignore = FALSE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = FALSE;

 switch (opcode) {
 case 129:
  resp = eap_gpsk_process_gpsk_1(sm, data, ret, id, pos, len);
  break;
 case 128:
  resp = eap_gpsk_process_gpsk_3(sm, data, ret, id, pos, len);
  break;
 default:
  wpa_printf(MSG_DEBUG,
      "EAP-GPSK: Ignoring message with unknown opcode %d",
      opcode);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 return resp;
}
