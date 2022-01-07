
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sim_num; int fragment_size; } ;
struct wpa_ssid {int ht; int vht_rx_mcs_nss_1; int vht_rx_mcs_nss_2; int vht_rx_mcs_nss_3; int vht_rx_mcs_nss_4; int vht_rx_mcs_nss_5; int vht_rx_mcs_nss_6; int vht_rx_mcs_nss_7; int vht_rx_mcs_nss_8; int vht_tx_mcs_nss_1; int vht_tx_mcs_nss_2; int vht_tx_mcs_nss_3; int vht_tx_mcs_nss_4; int vht_tx_mcs_nss_5; int vht_tx_mcs_nss_6; int vht_tx_mcs_nss_7; int vht_tx_mcs_nss_8; int proactive_key_caching; int mac_addr; int max_oper_chwidth; int mka_priority; int ieee80211w; int ampdu_density; int ampdu_factor; int disable_max_amsdu; int rx_stbc; int tx_stbc; int disable_ldpc; int disable_sgi; int disable_ht40; int disable_ht; int mesh_rssi_threshold; int dot11MeshHoldingTimeout; int dot11MeshConfirmTimeout; int dot11MeshRetryTimeout; int dot11MeshMaxRetries; TYPE_1__ eap; int eap_workaround; int eapol_flags; int bg_scan_period; int key_mgmt; int group_cipher; int pairwise_cipher; int proto; } ;


 int DEFAULT_AMPDU_DENSITY ;
 int DEFAULT_AMPDU_FACTOR ;
 int DEFAULT_BG_SCAN_PERIOD ;
 int DEFAULT_DISABLE_HT ;
 int DEFAULT_DISABLE_HT40 ;
 int DEFAULT_DISABLE_LDPC ;
 int DEFAULT_DISABLE_MAX_AMSDU ;
 int DEFAULT_DISABLE_SGI ;
 int DEFAULT_EAPOL_FLAGS ;
 int DEFAULT_EAP_WORKAROUND ;
 int DEFAULT_FRAGMENT_SIZE ;
 int DEFAULT_GROUP ;
 int DEFAULT_KEY_MGMT ;
 int DEFAULT_MAX_OPER_CHWIDTH ;
 int DEFAULT_MESH_CONFIRM_TIMEOUT ;
 int DEFAULT_MESH_HOLDING_TIMEOUT ;
 int DEFAULT_MESH_MAX_RETRIES ;
 int DEFAULT_MESH_RETRY_TIMEOUT ;
 int DEFAULT_MESH_RSSI_THRESHOLD ;
 int DEFAULT_PAIRWISE ;
 int DEFAULT_PRIO_NOT_KEY_SERVER ;
 int DEFAULT_PROTO ;
 int DEFAULT_RX_STBC ;
 int DEFAULT_TX_STBC ;
 int DEFAULT_USER_SELECTED_SIM ;
 int MGMT_FRAME_PROTECTION_DEFAULT ;

void wpa_config_set_network_defaults(struct wpa_ssid *ssid)
{
 ssid->proto = DEFAULT_PROTO;
 ssid->pairwise_cipher = DEFAULT_PAIRWISE;
 ssid->group_cipher = DEFAULT_GROUP;
 ssid->key_mgmt = DEFAULT_KEY_MGMT;
 ssid->bg_scan_period = DEFAULT_BG_SCAN_PERIOD;
 ssid->ht = 1;
 ssid->proactive_key_caching = -1;






 ssid->mac_addr = -1;
 ssid->max_oper_chwidth = DEFAULT_MAX_OPER_CHWIDTH;
}
