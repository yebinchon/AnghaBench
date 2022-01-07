
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int dummy; } ;


 int const HS20_WNM_DEAUTH_IMMINENT_NOTICE ;
 int const HS20_WNM_SUB_REM_NEEDED ;
 int const HS20_WNM_T_C_ACCEPTANCE ;
 int MSG_DEBUG ;
 scalar_t__ OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 scalar_t__ WPA_GET_BE24 (int const*) ;
 int WPA_GET_LE16 (int const*) ;
 int hs20_rx_deauth_imminent_notice (struct wpa_supplicant*,int,int ,char*) ;
 int hs20_rx_subscription_remediation (struct wpa_supplicant*,char*,int) ;
 int hs20_rx_t_c_acceptance (struct wpa_supplicant*,char*) ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_memcpy (char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void ieee802_11_rx_wnm_notif_req_wfa(struct wpa_supplicant *wpa_s,
         const u8 *sa, const u8 *data,
         int len)
{
 const u8 *pos, *end, *next;
 u8 ie, ie_len;

 pos = data;
 end = data + len;

 while (end - pos > 1) {
  ie = *pos++;
  ie_len = *pos++;
  wpa_printf(MSG_DEBUG, "WNM: WFA subelement %u len %u",
      ie, ie_len);
  if (ie_len > end - pos) {
   wpa_printf(MSG_DEBUG, "WNM: Not enough room for "
       "subelement");
   break;
  }
  next = pos + ie_len;
  if (ie_len < 4) {
   pos = next;
   continue;
  }
  wpa_printf(MSG_DEBUG, "WNM: Subelement OUI %06x type %u",
      WPA_GET_BE24(pos), pos[3]);
  pos = next;
 }
}
