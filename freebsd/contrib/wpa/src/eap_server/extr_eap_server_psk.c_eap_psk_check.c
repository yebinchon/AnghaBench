
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_psk_hdr_4 {int dummy; } ;
struct eap_psk_hdr_2 {int dummy; } ;
struct eap_psk_data {scalar_t__ state; } ;
typedef int Boolean ;


 int EAP_PSK_FLAGS_GET_T (int const) ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ PSK_1 ;
 scalar_t__ PSK_3 ;
 int TRUE ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static Boolean eap_psk_check(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_psk_data *data = priv;
 size_t len;
 u8 t;
 const u8 *pos;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PSK, respData, &len);
 if (pos == ((void*)0) || len < 1) {
  wpa_printf(MSG_INFO, "EAP-PSK: Invalid frame");
  return TRUE;
 }
 t = EAP_PSK_FLAGS_GET_T(*pos);

 wpa_printf(MSG_DEBUG, "EAP-PSK: received frame: T=%d", t);

 if (data->state == PSK_1 && t != 1) {
  wpa_printf(MSG_DEBUG, "EAP-PSK: Expected PSK-2 - "
      "ignore T=%d", t);
  return TRUE;
 }

 if (data->state == PSK_3 && t != 3) {
  wpa_printf(MSG_DEBUG, "EAP-PSK: Expected PSK-4 - "
      "ignore T=%d", t);
  return TRUE;
 }

 if ((t == 1 && len < sizeof(struct eap_psk_hdr_2)) ||
     (t == 3 && len < sizeof(struct eap_psk_hdr_4))) {
  wpa_printf(MSG_DEBUG, "EAP-PSK: Too short frame");
  return TRUE;
 }

 return FALSE;
}
