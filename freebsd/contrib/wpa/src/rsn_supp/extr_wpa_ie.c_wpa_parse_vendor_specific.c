
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_eapol_ie_parse {int const* wmm; int wmm_len; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 unsigned int OUI_MICROSOFT ;
 int const WMM_OUI_SUBTYPE_INFORMATION_ELEMENT ;
 int const WMM_OUI_SUBTYPE_PARAMETER_ELEMENT ;
 int const WMM_OUI_TYPE ;
 unsigned int WPA_GET_BE24 (int const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,int const) ;

__attribute__((used)) static int wpa_parse_vendor_specific(const u8 *pos, const u8 *end,
         struct wpa_eapol_ie_parse *ie)
{
 unsigned int oui;

 if (pos[1] < 4) {
  wpa_printf(MSG_MSGDUMP, "Too short vendor specific IE ignored (len=%u)",
      pos[1]);
  return 1;
 }

 oui = WPA_GET_BE24(&pos[2]);
 if (oui == OUI_MICROSOFT && pos[5] == WMM_OUI_TYPE && pos[1] > 4) {
  if (pos[6] == WMM_OUI_SUBTYPE_INFORMATION_ELEMENT) {
   ie->wmm = &pos[2];
   ie->wmm_len = pos[1];
   wpa_hexdump(MSG_DEBUG, "WPA: WMM IE",
        ie->wmm, ie->wmm_len);
  } else if (pos[6] == WMM_OUI_SUBTYPE_PARAMETER_ELEMENT) {
   ie->wmm = &pos[2];
   ie->wmm_len = pos[1];
   wpa_hexdump(MSG_DEBUG, "WPA: WMM Parameter Element",
        ie->wmm, ie->wmm_len);
  }
 }
 return 0;
}
