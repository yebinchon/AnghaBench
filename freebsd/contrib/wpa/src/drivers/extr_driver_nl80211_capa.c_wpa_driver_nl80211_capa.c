
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int key_mgmt; int flags; int auth; } ;
struct wpa_driver_nl80211_data {int has_capability; int use_monitor; TYPE_2__ capa; int have_low_prio_scan; int p2p_go_ctwindow_supported; int data_tx_status; int poll_command_supported; scalar_t__ device_ap_sme; } ;
struct wiphy_info_data {TYPE_1__* capa; int data_tx_status; int poll_command_supported; scalar_t__ device_ap_sme; int have_low_prio_scan; scalar_t__ set_qos_map_supported; int p2p_go_ctwindow_supported; scalar_t__ error; } ;
struct TYPE_3__ {int flags; } ;


 int WPA_DRIVER_AUTH_LEAP ;
 int WPA_DRIVER_AUTH_OPEN ;
 int WPA_DRIVER_AUTH_SHARED ;
 int WPA_DRIVER_CAPA_KEY_MGMT_DPP ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA384 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_OWE ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SAE ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B ;
 int WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B_192 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2 ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK ;
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK ;
 int WPA_DRIVER_FLAGS_AP_MLME ;
 int WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT ;
 int WPA_DRIVER_FLAGS_DEAUTH_TX_STATUS ;
 int WPA_DRIVER_FLAGS_DFS_OFFLOAD ;
 int WPA_DRIVER_FLAGS_EAPOL_TX_STATUS ;
 int WPA_DRIVER_FLAGS_FILS_SK_OFFLOAD ;
 int WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS ;
 int WPA_DRIVER_FLAGS_OFFCHANNEL_TX ;
 int WPA_DRIVER_FLAGS_QOS_MAPPING ;
 int WPA_DRIVER_FLAGS_SANE_ERROR_CODES ;
 int WPA_DRIVER_FLAGS_SET_KEYS_AFTER_ASSOC_DONE ;
 int WPA_DRIVER_FLAGS_SME ;
 int qca_nl80211_check_dfs_capa (struct wpa_driver_nl80211_data*) ;
 int qca_nl80211_get_akm_suites (struct wpa_driver_nl80211_data*) ;
 int qca_nl80211_get_features (struct wpa_driver_nl80211_data*) ;
 scalar_t__ wpa_driver_nl80211_get_info (struct wpa_driver_nl80211_data*,struct wiphy_info_data*) ;

int wpa_driver_nl80211_capa(struct wpa_driver_nl80211_data *drv)
{
 struct wiphy_info_data info;
 if (wpa_driver_nl80211_get_info(drv, &info))
  return -1;

 if (info.error)
  return -1;

 drv->has_capability = 1;
 drv->capa.key_mgmt = WPA_DRIVER_CAPA_KEY_MGMT_WPA |
  WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK |
  WPA_DRIVER_CAPA_KEY_MGMT_WPA2 |
  WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK |
  WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B |
  WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B_192 |
  WPA_DRIVER_CAPA_KEY_MGMT_OWE |
  WPA_DRIVER_CAPA_KEY_MGMT_DPP;

 if (drv->capa.flags & WPA_DRIVER_FLAGS_SME)
  drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256 |
   WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384 |
   WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA256 |
   WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA384 |
   WPA_DRIVER_CAPA_KEY_MGMT_SAE;
 else if (drv->capa.flags & WPA_DRIVER_FLAGS_FILS_SK_OFFLOAD)
  drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256 |
   WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384;







 drv->capa.auth = WPA_DRIVER_AUTH_OPEN |
  WPA_DRIVER_AUTH_SHARED |
  WPA_DRIVER_AUTH_LEAP;

 drv->capa.flags |= WPA_DRIVER_FLAGS_SANE_ERROR_CODES;
 drv->capa.flags |= WPA_DRIVER_FLAGS_SET_KEYS_AFTER_ASSOC_DONE;
 drv->capa.flags |= WPA_DRIVER_FLAGS_EAPOL_TX_STATUS;
 drv->capa.flags |= WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT;

 if (!info.device_ap_sme) {
  drv->capa.flags |= WPA_DRIVER_FLAGS_DEAUTH_TX_STATUS;





  drv->capa.flags |= WPA_DRIVER_FLAGS_AP_MLME;
 }

 drv->device_ap_sme = info.device_ap_sme;
 drv->poll_command_supported = info.poll_command_supported;
 drv->data_tx_status = info.data_tx_status;
 drv->p2p_go_ctwindow_supported = info.p2p_go_ctwindow_supported;
 if (info.set_qos_map_supported)
  drv->capa.flags |= WPA_DRIVER_FLAGS_QOS_MAPPING;
 drv->have_low_prio_scan = info.have_low_prio_scan;





 drv->use_monitor = !info.device_ap_sme &&
  (!info.poll_command_supported || !info.data_tx_status);






 if (!drv->use_monitor && !info.data_tx_status)
  drv->capa.flags &= ~WPA_DRIVER_FLAGS_EAPOL_TX_STATUS;
 return 0;
}
