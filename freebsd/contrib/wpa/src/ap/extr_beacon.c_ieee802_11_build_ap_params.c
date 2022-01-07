
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct wpa_driver_ap_params* variable; void* capab_info; void* beacon_int; } ;
struct TYPE_11__ {TYPE_1__ beacon; } ;
struct wpa_driver_ap_params {size_t head_len; size_t tail_len; size_t proberesp_len; int ssid_len; int pairwise_ciphers; int wpa_version; int privacy; int smps_mode; int cts_protect; int preamble; int short_slot_time; int ht_opmode; int osen; int ftm_responder; int civic; int lci; int pbss; int multicast_to_unicast; int disable_dgaf; int p2p_go_ctwindow; int ap_max_inactivity; int access_network_type; int hessid; scalar_t__ interworking; int isolate; int hide_ssid; int auth_algs; int key_mgmt_suites; int group_cipher; int ssid; int rate_type; int beacon_rate; int basic_rates; scalar_t__ beacon_int; int dtim_period; struct wpa_driver_ap_params* proberesp; struct wpa_driver_ap_params* tail; struct wpa_driver_ap_params* head; TYPE_2__ u; struct wpa_driver_ap_params* bssid; struct wpa_driver_ap_params* sa; struct wpa_driver_ap_params* da; void* duration; int frame_control; } ;
typedef struct wpa_driver_ap_params u8 ;
typedef scalar_t__ u16 ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_vht_capabilities {int dummy; } ;
struct ieee80211_spatial_reuse {int dummy; } ;
struct ieee80211_mgmt {size_t head_len; size_t tail_len; size_t proberesp_len; int ssid_len; int pairwise_ciphers; int wpa_version; int privacy; int smps_mode; int cts_protect; int preamble; int short_slot_time; int ht_opmode; int osen; int ftm_responder; int civic; int lci; int pbss; int multicast_to_unicast; int disable_dgaf; int p2p_go_ctwindow; int ap_max_inactivity; int access_network_type; int hessid; scalar_t__ interworking; int isolate; int hide_ssid; int auth_algs; int key_mgmt_suites; int group_cipher; int ssid; int rate_type; int beacon_rate; int basic_rates; scalar_t__ beacon_int; int dtim_period; struct ieee80211_mgmt* proberesp; struct ieee80211_mgmt* tail; struct ieee80211_mgmt* head; TYPE_2__ u; struct ieee80211_mgmt* bssid; struct ieee80211_mgmt* sa; struct ieee80211_mgmt* da; void* duration; int frame_control; } ;
struct ieee80211_he_operation {int dummy; } ;
struct ieee80211_he_mu_edca_parameter_set {int dummy; } ;
struct ieee80211_he_capabilities {int dummy; } ;
struct hostapd_data {int cs_c_off_beacon; int cs_c_off_ecsa_beacon; TYPE_9__* iface; TYPE_7__* conf; TYPE_6__* iconf; scalar_t__ p2p_beacon_ie; scalar_t__ wps_beacon_ie; int own_addr; } ;
struct TYPE_18__ {scalar_t__ num_sta_no_short_preamble; scalar_t__ num_sta_no_short_slot_time; int ht_op_mode; int drv_flags; TYPE_8__* conf; TYPE_5__* current_mode; int basic_rates; scalar_t__ fst_ies; } ;
struct TYPE_17__ {int civic; int lci; } ;
struct TYPE_12__ {scalar_t__ keys_set; } ;
struct TYPE_13__ {int ssid_len; TYPE_3__ wep; int ssid; } ;
struct TYPE_16__ {int ignore_broadcast_ssid; int wpa; int p2p; int wpa_pairwise; int rsn_pairwise; scalar_t__ ftm_responder; int pbss; int multicast_to_unicast; scalar_t__ osen; int disable_dgaf; int ap_max_inactivity; int access_network_type; int hessid; scalar_t__ interworking; scalar_t__ disable_11n; int isolate; scalar_t__ individual_wep_key_len; scalar_t__ default_wep_key_len; scalar_t__ ieee802_1x; TYPE_4__ ssid; int auth_algs; int wpa_key_mgmt; int wpa_group; int dtim_period; scalar_t__ vendor_elements; scalar_t__ wps_state; scalar_t__ vendor_vht; int disable_11ac; } ;
struct TYPE_15__ {int ht_capab; scalar_t__ preamble; int p2p_go_ctwindow; int ieee80211n; int rate_type; int beacon_rate; scalar_t__ beacon_int; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; } ;
struct TYPE_14__ {scalar_t__ mode; } ;


 int BEACON_HEAD_BUF_SIZE ;
 size_t BEACON_TAIL_BUF_SIZE ;
 int ERP_INFO_USE_PROTECTION ;
 int ETH_ALEN ;
 int HIDDEN_SSID_ZERO_CONTENTS ;
 int HIDDEN_SSID_ZERO_LEN ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int HT_CAP_INFO_SMPS_MASK ;
 int IEEE80211_FC (int ,int ) ;
 int IEEE80211_MODE_AP ;
 int MSG_ERROR ;
 int MSG_WARNING ;
 int NO_SSID_HIDING ;
 int P2P_ENABLED ;
 int P2P_GROUP_OWNER ;
 int P2P_MANAGE ;
 scalar_t__ SHORT_PREAMBLE ;
 int WLAN_EID_SSID ;
 int WLAN_FC_STYPE_BEACON ;
 int WLAN_FC_TYPE_MGMT ;
 int WPA_DRIVER_FLAGS_FTM_RESPONDER ;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 void* host_to_le16 (scalar_t__) ;
 struct wpa_driver_ap_params* hostapd_eid_adv_proto (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_bss_load (struct hostapd_data*,struct wpa_driver_ap_params*,int) ;
 struct wpa_driver_ap_params* hostapd_eid_country (struct hostapd_data*,struct wpa_driver_ap_params*,int) ;
 struct wpa_driver_ap_params* hostapd_eid_csa (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_ds_params (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_ecsa (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_erp_info (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_ext_capab (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_ext_supp_rates (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_fils_indic (struct hostapd_data*,struct wpa_driver_ap_params*,int ) ;
 struct wpa_driver_ap_params* hostapd_eid_he_capab (struct hostapd_data*,struct wpa_driver_ap_params*,int ) ;
 struct wpa_driver_ap_params* hostapd_eid_he_mu_edca_parameter_set (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_he_operation (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_hs20_indication (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_ht_capabilities (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_ht_operation (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_interworking (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_mbo (struct hostapd_data*,struct wpa_driver_ap_params*,int) ;
 struct wpa_driver_ap_params* hostapd_eid_osen (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_owe_trans (struct hostapd_data*,struct wpa_driver_ap_params*,int) ;
 scalar_t__ hostapd_eid_owe_trans_len (struct hostapd_data*) ;
 struct wpa_driver_ap_params* hostapd_eid_p2p_manage (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_pwr_constraint (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_rm_enabled_capab (struct hostapd_data*,struct wpa_driver_ap_params*,int) ;
 struct wpa_driver_ap_params* hostapd_eid_roaming_consortium (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_secondary_channel (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_spatial_reuse (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_supp_rates (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_supported_op_classes (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_time_adv (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_txpower_envelope (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_vendor_vht (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_vht_capabilities (struct hostapd_data*,struct wpa_driver_ap_params*,int ) ;
 struct wpa_driver_ap_params* hostapd_eid_vht_operation (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_wb_chsw_wrapper (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_wmm (struct hostapd_data*,struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* hostapd_eid_wpa (struct hostapd_data*,struct wpa_driver_ap_params*,int) ;
 scalar_t__ hostapd_mbo_ie_len (struct hostapd_data*) ;
 scalar_t__ hostapd_own_capab_info (struct hostapd_data*) ;
 struct wpa_driver_ap_params* hostapd_probe_resp_offloads (struct hostapd_data*,size_t*) ;
 int ieee802_11_erp_info (struct hostapd_data*) ;
 int is_zero_ether_addr (int ) ;
 int os_free (struct wpa_driver_ap_params*) ;
 struct wpa_driver_ap_params* os_malloc (size_t) ;
 int os_memcpy (struct wpa_driver_ap_params*,int ,int) ;
 int os_memset (struct wpa_driver_ap_params*,int,int) ;
 struct wpa_driver_ap_params* os_zalloc (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (scalar_t__) ;
 int wpabuf_len (scalar_t__) ;

int ieee802_11_build_ap_params(struct hostapd_data *hapd,
          struct wpa_driver_ap_params *params)
{
 struct ieee80211_mgmt *head = ((void*)0);
 u8 *tail = ((void*)0);
 size_t head_len = 0, tail_len = 0;
 u8 *resp = ((void*)0);
 size_t resp_len = 0;
 os_memset(params, 0, sizeof(*params));
 params->head = (u8 *) head;
 params->head_len = head_len;
 params->tail = tail;
 params->tail_len = tail_len;
 params->proberesp = resp;
 params->proberesp_len = resp_len;
 params->dtim_period = hapd->conf->dtim_period;
 params->beacon_int = hapd->iconf->beacon_int;
 params->basic_rates = hapd->iface->basic_rates;
 params->beacon_rate = hapd->iconf->beacon_rate;
 params->rate_type = hapd->iconf->rate_type;
 params->ssid = hapd->conf->ssid.ssid;
 params->ssid_len = hapd->conf->ssid.ssid_len;
 if ((hapd->conf->wpa & (WPA_PROTO_WPA | WPA_PROTO_RSN)) ==
     (WPA_PROTO_WPA | WPA_PROTO_RSN))
  params->pairwise_ciphers = hapd->conf->wpa_pairwise |
   hapd->conf->rsn_pairwise;
 else if (hapd->conf->wpa & WPA_PROTO_RSN)
  params->pairwise_ciphers = hapd->conf->rsn_pairwise;
 else if (hapd->conf->wpa & WPA_PROTO_WPA)
  params->pairwise_ciphers = hapd->conf->wpa_pairwise;
 params->group_cipher = hapd->conf->wpa_group;
 params->key_mgmt_suites = hapd->conf->wpa_key_mgmt;
 params->auth_algs = hapd->conf->auth_algs;
 params->wpa_version = hapd->conf->wpa;
 params->privacy = hapd->conf->ssid.wep.keys_set || hapd->conf->wpa ||
  (hapd->conf->ieee802_1x &&
   (hapd->conf->default_wep_key_len ||
    hapd->conf->individual_wep_key_len));
 switch (hapd->conf->ignore_broadcast_ssid) {
 case 0:
  params->hide_ssid = NO_SSID_HIDING;
  break;
 case 1:
  params->hide_ssid = HIDDEN_SSID_ZERO_LEN;
  break;
 case 2:
  params->hide_ssid = HIDDEN_SSID_ZERO_CONTENTS;
  break;
 }
 params->isolate = hapd->conf->isolate;
 params->smps_mode = hapd->iconf->ht_capab & HT_CAP_INFO_SMPS_MASK;
 params->interworking = hapd->conf->interworking;
 if (hapd->conf->interworking &&
     !is_zero_ether_addr(hapd->conf->hessid))
  params->hessid = hapd->conf->hessid;
 params->access_network_type = hapd->conf->access_network_type;
 params->ap_max_inactivity = hapd->conf->ap_max_inactivity;
 params->multicast_to_unicast = hapd->conf->multicast_to_unicast;
 params->pbss = hapd->conf->pbss;

 if (hapd->conf->ftm_responder) {
  if (hapd->iface->drv_flags & WPA_DRIVER_FLAGS_FTM_RESPONDER) {
   params->ftm_responder = 1;
   params->lci = hapd->iface->conf->lci;
   params->civic = hapd->iface->conf->civic;
  } else {
   wpa_printf(MSG_WARNING,
       "Not configuring FTM responder as the driver doesn't advertise support for it");
  }
 }

 return 0;
}
