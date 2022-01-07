
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int wpa; int bssid; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WNM_SLEEP_EXIT_CONFIRM ;
 int WNM_SLEEP_SUBELEM_GTK ;
 int WNM_SLEEP_SUBELEM_IGTK ;
 int WPA_IGTK_LEN ;
 int wpa_drv_wnm_oper (struct wpa_supplicant*,int ,int ,int *,int *) ;
 int wpa_hexdump (int ,char*,int*,int) ;
 int wpa_hexdump_key (int ,char*,int*,int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_pmf_enabled (int ) ;
 int wpa_wnmsleep_install_key (int ,int,int*) ;

__attribute__((used)) static void wnm_sleep_mode_exit_success(struct wpa_supplicant *wpa_s,
     const u8 *frm, u16 key_len_total)
{
 u8 *ptr, *end;
 u8 gtk_len;

 wpa_drv_wnm_oper(wpa_s, WNM_SLEEP_EXIT_CONFIRM, wpa_s->bssid,
    ((void*)0), ((void*)0));




 ptr = (u8 *) frm + 1 + 2;
 end = ptr + key_len_total;
 wpa_hexdump_key(MSG_DEBUG, "WNM: Key Data", ptr, key_len_total);

 if (key_len_total && !wpa_sm_pmf_enabled(wpa_s->wpa)) {
  wpa_msg(wpa_s, MSG_INFO,
   "WNM: Ignore Key Data in WNM-Sleep Mode Response - PMF not enabled");
  return;
 }

 while (end - ptr > 1) {
  if (2 + ptr[1] > end - ptr) {
   wpa_printf(MSG_DEBUG, "WNM: Invalid Key Data element "
       "length");
   if (end > ptr) {
    wpa_hexdump(MSG_DEBUG, "WNM: Remaining data",
         ptr, end - ptr);
   }
   break;
  }
  if (*ptr == WNM_SLEEP_SUBELEM_GTK) {
   if (ptr[1] < 11 + 5) {
    wpa_printf(MSG_DEBUG, "WNM: Too short GTK "
        "subelem");
    break;
   }
   gtk_len = *(ptr + 4);
   if (ptr[1] < 11 + gtk_len ||
       gtk_len < 5 || gtk_len > 32) {
    wpa_printf(MSG_DEBUG, "WNM: Invalid GTK "
        "subelem");
    break;
   }
   wpa_wnmsleep_install_key(
    wpa_s->wpa,
    WNM_SLEEP_SUBELEM_GTK,
    ptr);
   ptr += 13 + gtk_len;
  } else
   break;
 }
}
