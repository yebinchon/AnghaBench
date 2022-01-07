
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {scalar_t__ state; } ;
typedef int Boolean ;


 scalar_t__ const EAP_GPSK_OPCODE_GPSK_2 ;
 scalar_t__ const EAP_GPSK_OPCODE_GPSK_4 ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 scalar_t__ GPSK_1 ;
 scalar_t__ GPSK_3 ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TRUE ;
 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static Boolean eap_gpsk_check(struct eap_sm *sm, void *priv,
         struct wpabuf *respData)
{
 struct eap_gpsk_data *data = priv;
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_GPSK, respData, &len);
 if (pos == ((void*)0) || len < 1) {
  wpa_printf(MSG_INFO, "EAP-GPSK: Invalid frame");
  return TRUE;
 }

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Received frame: opcode=%d", *pos);

 if (data->state == GPSK_1 && *pos == EAP_GPSK_OPCODE_GPSK_2)
  return FALSE;

 if (data->state == GPSK_3 && *pos == EAP_GPSK_OPCODE_GPSK_4)
  return FALSE;

 wpa_printf(MSG_INFO, "EAP-GPSK: Unexpected opcode=%d in state=%d",
     *pos, data->state);

 return TRUE;
}
