
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpa_driver_nl80211_data {int dummy; } ;


 int MSG_DEBUG ;
 int qca_nl80211_acs_select_ch (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int qca_nl80211_avoid_freq (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int qca_nl80211_dfs_offload_radar_event (struct wpa_driver_nl80211_data*,int,int *,size_t) ;
 int qca_nl80211_key_mgmt_auth (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int qca_nl80211_p2p_lo_stop_event (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int qca_nl80211_scan_done_event (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int qca_nl80211_scan_trigger_event (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void nl80211_vendor_event_qca(struct wpa_driver_nl80211_data *drv,
         u32 subcmd, u8 *data, size_t len)
{
 switch (subcmd) {
 case 129:
  wpa_hexdump(MSG_DEBUG, "nl80211: QCA test event", data, len);
  break;
 default:
  wpa_printf(MSG_DEBUG,
      "nl80211: Ignore unsupported QCA vendor event %u",
      subcmd);
  break;
 }
}
