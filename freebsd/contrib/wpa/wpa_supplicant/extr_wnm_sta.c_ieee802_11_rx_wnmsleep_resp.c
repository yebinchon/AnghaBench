
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct wpa_supplicant {int bssid; scalar_t__ wnmsleep_used; int wpa; } ;
struct wpa_channel_info {int seg1_idx; int chanwidth; } ;
struct wnm_sleep_element {int const action_type; scalar_t__ status; size_t intval; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int const WLAN_EID_EXTENSION ;
 int const WLAN_EID_EXT_OCV_OCI ;
 int const WLAN_EID_TFS_RESP ;
 int const WLAN_EID_WNMSLEEP ;
 int WNM_SLEEP_ENTER_FAIL ;
 int WNM_SLEEP_EXIT_FAIL ;
 int const WNM_SLEEP_MODE_ENTER ;
 int const WNM_SLEEP_MODE_EXIT ;
 scalar_t__ WNM_STATUS_SLEEP_ACCEPT ;
 scalar_t__ WNM_STATUS_SLEEP_EXIT_ACCEPT_GTK_UPDATE ;
 size_t WPA_GET_LE16 (int const*) ;
 int channel_width_to_int (int ) ;
 int ocv_errorstr ;
 scalar_t__ ocv_verify_tx_params (int const*,int,struct wpa_channel_info*,int ,int ) ;
 int wnm_sleep_mode_enter_success (struct wpa_supplicant*,int const*,int const*) ;
 int wnm_sleep_mode_exit_success (struct wpa_supplicant*,int const*,size_t) ;
 scalar_t__ wpa_drv_channel_info (struct wpa_supplicant*,struct wpa_channel_info*) ;
 int wpa_drv_wnm_oper (struct wpa_supplicant*,int ,int ,int *,int *) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_sm_ocv_enabled (int ) ;

__attribute__((used)) static void ieee802_11_rx_wnmsleep_resp(struct wpa_supplicant *wpa_s,
     const u8 *frm, int len)
{




 const u8 *pos = frm;
 u16 key_len_total;
 struct wnm_sleep_element *wnmsleep_ie = ((void*)0);

 const u8 *tfsresp_ie_start = ((void*)0);
 const u8 *tfsresp_ie_end = ((void*)0);




 size_t left;

 if (!wpa_s->wnmsleep_used) {
  wpa_printf(MSG_DEBUG,
      "WNM: Ignore WNM-Sleep Mode Response frame since WNM-Sleep Mode operation has not been requested");
  return;
 }

 if (len < 3)
  return;
 key_len_total = WPA_GET_LE16(frm + 1);

 wpa_printf(MSG_DEBUG, "WNM-Sleep Mode Response token=%u key_len_total=%d",
     frm[0], key_len_total);
 left = len - 3;
 if (key_len_total > left) {
  wpa_printf(MSG_INFO, "WNM: Too short frame for Key Data field");
  return;
 }
 pos += 3 + key_len_total;
 while (pos - frm + 1 < len) {
  u8 ie_len = *(pos + 1);
  if (2 + ie_len > frm + len - pos) {
   wpa_printf(MSG_INFO, "WNM: Invalid IE len %u", ie_len);
   break;
  }
  wpa_hexdump(MSG_DEBUG, "WNM: Element", pos, 2 + ie_len);
  if (*pos == WLAN_EID_WNMSLEEP && ie_len >= 4)
   wnmsleep_ie = (struct wnm_sleep_element *) pos;
  else if (*pos == WLAN_EID_TFS_RESP) {
   if (!tfsresp_ie_start)
    tfsresp_ie_start = pos;
   tfsresp_ie_end = pos;






  } else
   wpa_printf(MSG_DEBUG, "EID %d not recognized", *pos);
  pos += ie_len + 2;
 }

 if (!wnmsleep_ie) {
  wpa_printf(MSG_DEBUG, "No WNM-Sleep IE found");
  return;
 }
 wpa_s->wnmsleep_used = 0;

 if (wnmsleep_ie->status == WNM_STATUS_SLEEP_ACCEPT ||
     wnmsleep_ie->status == WNM_STATUS_SLEEP_EXIT_ACCEPT_GTK_UPDATE) {
  wpa_printf(MSG_DEBUG, "Successfully recv WNM-Sleep Response "
      "frame (action=%d, intval=%d)",
      wnmsleep_ie->action_type, wnmsleep_ie->intval);
  if (wnmsleep_ie->action_type == WNM_SLEEP_MODE_ENTER) {
   wnm_sleep_mode_enter_success(wpa_s, tfsresp_ie_start,
           tfsresp_ie_end);
  } else if (wnmsleep_ie->action_type == WNM_SLEEP_MODE_EXIT) {
   wnm_sleep_mode_exit_success(wpa_s, frm, key_len_total);
  }
 } else {
  wpa_printf(MSG_DEBUG, "Reject recv WNM-Sleep Response frame "
      "(action=%d, intval=%d)",
      wnmsleep_ie->action_type, wnmsleep_ie->intval);
  if (wnmsleep_ie->action_type == WNM_SLEEP_MODE_ENTER)
   wpa_drv_wnm_oper(wpa_s, WNM_SLEEP_ENTER_FAIL,
      wpa_s->bssid, ((void*)0), ((void*)0));
  else if (wnmsleep_ie->action_type == WNM_SLEEP_MODE_EXIT)
   wpa_drv_wnm_oper(wpa_s, WNM_SLEEP_EXIT_FAIL,
      wpa_s->bssid, ((void*)0), ((void*)0));
 }
}
