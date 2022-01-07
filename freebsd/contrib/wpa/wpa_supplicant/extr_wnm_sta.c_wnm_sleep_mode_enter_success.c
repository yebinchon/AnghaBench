
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int bssid; } ;


 int MSG_DEBUG ;
 int WNM_SLEEP_ENTER_CONFIRM ;
 int WNM_SLEEP_TFS_RESP_IE_SET ;
 scalar_t__ ieee80211_11_set_tfs_ie (struct wpa_supplicant*,int ,int const*,int,int ) ;
 int wpa_drv_wnm_oper (struct wpa_supplicant*,int ,int ,int *,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wnm_sleep_mode_enter_success(struct wpa_supplicant *wpa_s,
      const u8 *tfsresp_ie_start,
      const u8 *tfsresp_ie_end)
{
 wpa_drv_wnm_oper(wpa_s, WNM_SLEEP_ENTER_CONFIRM,
    wpa_s->bssid, ((void*)0), ((void*)0));



 if (tfsresp_ie_start && tfsresp_ie_end &&
     tfsresp_ie_end - tfsresp_ie_start >= 0) {
  u16 tfsresp_ie_len;
  tfsresp_ie_len = (tfsresp_ie_end + tfsresp_ie_end[1] + 2) -
   tfsresp_ie_start;
  wpa_printf(MSG_DEBUG, "TFS Resp IE(s) found");

  if (ieee80211_11_set_tfs_ie(wpa_s, wpa_s->bssid,
         tfsresp_ie_start,
         tfsresp_ie_len,
         WNM_SLEEP_TFS_RESP_IE_SET))
   wpa_printf(MSG_DEBUG, "WNM: Fail to set TFS Resp IE");
 }
}
