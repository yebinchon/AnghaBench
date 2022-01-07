
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int state; } ;
typedef int Boolean ;


 scalar_t__ EAP_PWD_GET_EXCHANGE (scalar_t__ const) ;
 scalar_t__ EAP_PWD_OPCODE_COMMIT_EXCH ;
 scalar_t__ EAP_PWD_OPCODE_CONFIRM_EXCH ;
 scalar_t__ EAP_PWD_OPCODE_ID_EXCH ;
 int EAP_TYPE_PWD ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int PWD_Commit_Req ;
 int PWD_Confirm_Req ;
 int PWD_ID_Req ;
 int TRUE ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static Boolean eap_pwd_check(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_pwd_data *data = priv;
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PWD, respData, &len);
 if (pos == ((void*)0) || len < 1) {
  wpa_printf(MSG_INFO, "EAP-pwd: Invalid frame");
  return TRUE;
 }

 wpa_printf(MSG_DEBUG, "EAP-pwd: Received frame: exch = %d, len = %d",
     EAP_PWD_GET_EXCHANGE(*pos), (int) len);

 if (data->state == PWD_ID_Req &&
     ((EAP_PWD_GET_EXCHANGE(*pos)) == EAP_PWD_OPCODE_ID_EXCH))
  return FALSE;

 if (data->state == PWD_Commit_Req &&
     ((EAP_PWD_GET_EXCHANGE(*pos)) == EAP_PWD_OPCODE_COMMIT_EXCH))
  return FALSE;

 if (data->state == PWD_Confirm_Req &&
     ((EAP_PWD_GET_EXCHANGE(*pos)) == EAP_PWD_OPCODE_CONFIRM_EXCH))
  return FALSE;

 wpa_printf(MSG_INFO, "EAP-pwd: Unexpected opcode=%d in state=%d",
     *pos, data->state);

 return TRUE;
}
