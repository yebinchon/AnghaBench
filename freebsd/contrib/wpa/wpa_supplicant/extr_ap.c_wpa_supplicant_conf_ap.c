
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int num_modes; int modes; } ;
struct wpa_supplicant {scalar_t__ max_stations; TYPE_8__* conf; TYPE_6__* wps; TYPE_4__* p2pdev; TYPE_2__* global; TYPE_1__ hw; int ifname; int driver; } ;
struct TYPE_17__ {scalar_t__ fragment_size; } ;
struct wpa_ssid {int pbss; scalar_t__ mode; int ssid_len; scalar_t__ key_mgmt; int proto; int pairwise_cipher; scalar_t__* wep_key_len; int beacon_int; scalar_t__ ieee80211w; TYPE_7__ eap; int ignore_broadcast_ssid; scalar_t__ wps_disabled; int ocv; scalar_t__ dtim_period; scalar_t__ ap_max_inactivity; int wep_tx_keyidx; int * wep_key; scalar_t__ passphrase; int psk; scalar_t__ psk_set; scalar_t__ auth_alg; int ssid; scalar_t__ p2p_group; int he; int frequency; scalar_t__ acs; } ;
struct hostapd_wpa_psk {int dummy; } ;
struct hostapd_wep_keys {scalar_t__* len; int keys_set; int default_len; int idx; int ** key; } ;
struct hostapd_config {int ieee80211h; int ieee80211d; char* country; scalar_t__ hw_mode; int* basic_rates; int* supported_rates; int beacon_int; int p2p_go_ctwindow; int ieee80211ax; scalar_t__ channel; int driver; struct hostapd_bss_config** bss; } ;
struct TYPE_15__ {int ssid_len; int ssid_set; int wpa_psk_set; scalar_t__ security_policy; struct hostapd_wep_keys wep; void* wpa_passphrase; TYPE_9__* wpa_psk; int ssid; } ;
struct hostapd_bss_config {int pbss; int isolate; int wpa; scalar_t__ wpa_key_mgmt; int wpa_pairwise; int venue_group; int venue_type; int venue_info_set; int rsn_pairwise; int wpa_group; int default_wep_key_len; int wpa_group_rekey; scalar_t__ ieee80211w; int eap_server; int wps_state; int ap_setup_locked; scalar_t__ fragment_size; scalar_t__ max_num_sta; int ftm_initiator; int ftm_responder; int vendor_elements; int disassoc_low_ack; int pbc_in_m1; int os_version; int uuid; void* serial_number; void* model_number; void* model_name; void* manufacturer; void* friendly_name; void* device_name; int device_type; void* config_methods; TYPE_5__ ssid; int ocv; scalar_t__ ieee802_1x; scalar_t__ dtim_period; scalar_t__ ap_max_inactivity; int internet; int access_network_type; scalar_t__ interworking; scalar_t__ auth_algs; int ignore_broadcast_ssid; int ip_addr_end; int ip_addr_start; int ip_addr_mask; int ip_addr_go; int force_per_enrollee_psk; int iface; } ;
struct TYPE_19__ {int group; int psk; } ;
struct TYPE_18__ {char* country; int go_venue_group; int go_venue_type; int beacon_int; int p2p_go_ctwindow; scalar_t__ max_num_sta; int ap_isolate; int ftm_initiator; int ftm_responder; scalar_t__ ap_vendor_elements; int disassoc_low_ack; int pbc_in_m1; int os_version; int uuid; scalar_t__ serial_number; scalar_t__ model_number; scalar_t__ model_name; scalar_t__ manufacturer; scalar_t__ device_name; int device_type; scalar_t__ config_methods; scalar_t__ dtim_period; int go_internet; int go_access_network_type; scalar_t__ go_interworking; int p2p_intra_bss; } ;
struct TYPE_16__ {int uuid; } ;
struct TYPE_14__ {TYPE_3__* conf; } ;
struct TYPE_13__ {int ip_addr_end; int ip_addr_start; int ip_addr_mask; int ip_addr_go; } ;
struct TYPE_12__ {int p2p_per_sta_psk; } ;


 scalar_t__ DEFAULT_FRAGMENT_SIZE ;
 scalar_t__ DEFAULT_KEY_MGMT ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 scalar_t__ MGMT_FRAME_PROTECTION_DEFAULT ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int NUM_WEP_KEYS ;
 int PMK_LEN ;
 scalar_t__ SECURITY_IEEE_802_1X ;
 scalar_t__ SECURITY_PLAINTEXT ;
 scalar_t__ SECURITY_STATIC_WEP ;
 scalar_t__ SECURITY_WPA ;
 scalar_t__ SECURITY_WPA_PSK ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ WPAS_MODE_P2P_GROUP_FORMATION ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_CCMP_256 ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_GCMP_256 ;
 void* WPA_CIPHER_NONE ;
 int WPA_CIPHER_WEP104 ;
 int WPA_CIPHER_WEP40 ;
 scalar_t__ WPA_KEY_MGMT_PSK ;
 int WPS_DEV_TYPE_LEN ;
 int WPS_UUID_LEN ;
 int bin_clear_free (TYPE_9__*,int) ;
 scalar_t__ ieee80211_is_dfs (int ,int ,int ) ;
 scalar_t__ is_nil_uuid (int ) ;
 int* os_malloc (int) ;
 int os_memcpy (int ,int ,int) ;
 int * os_memdup (int ,scalar_t__) ;
 void* os_strdup (scalar_t__) ;
 int os_strlcpy (int ,int ,int) ;
 TYPE_9__* os_zalloc (int) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (scalar_t__) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_select_ap_group_cipher (int,int,int) ;
 scalar_t__ wpa_supplicant_conf_ap_ht (struct wpa_supplicant*,struct wpa_ssid*,struct hostapd_config*) ;
 int wpabuf_dup (scalar_t__) ;

__attribute__((used)) static int wpa_supplicant_conf_ap(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *ssid,
      struct hostapd_config *conf)
{
 struct hostapd_bss_config *bss = conf->bss[0];

 conf->driver = wpa_s->driver;

 os_strlcpy(bss->iface, wpa_s->ifname, sizeof(bss->iface));

 if (wpa_supplicant_conf_ap_ht(wpa_s, ssid, conf))
  return -1;

 if (ssid->pbss > 1) {
  wpa_printf(MSG_ERROR, "Invalid pbss value(%d) for AP mode",
      ssid->pbss);
  return -1;
 }
 bss->pbss = ssid->pbss;
 if (ieee80211_is_dfs(ssid->frequency, wpa_s->hw.modes,
        wpa_s->hw.num_modes) && wpa_s->conf->country[0]) {
  conf->ieee80211h = 1;
  conf->ieee80211d = 1;
  conf->country[0] = wpa_s->conf->country[0];
  conf->country[1] = wpa_s->conf->country[1];
  conf->country[2] = ' ';
 }
 if (ssid->ssid_len == 0) {
  wpa_printf(MSG_ERROR, "No SSID configured for AP mode");
  return -1;
 }
 os_memcpy(bss->ssid.ssid, ssid->ssid, ssid->ssid_len);
 bss->ssid.ssid_len = ssid->ssid_len;
 bss->ssid.ssid_set = 1;

 bss->ignore_broadcast_ssid = ssid->ignore_broadcast_ssid;

 if (ssid->auth_alg)
  bss->auth_algs = ssid->auth_alg;

 if (wpa_key_mgmt_wpa_psk(ssid->key_mgmt))
  bss->wpa = ssid->proto;
 if (ssid->key_mgmt == DEFAULT_KEY_MGMT)
  bss->wpa_key_mgmt = WPA_KEY_MGMT_PSK;
 else
  bss->wpa_key_mgmt = ssid->key_mgmt;
 bss->wpa_pairwise = ssid->pairwise_cipher;
 if (ssid->psk_set) {
  bin_clear_free(bss->ssid.wpa_psk, sizeof(*bss->ssid.wpa_psk));
  bss->ssid.wpa_psk = os_zalloc(sizeof(struct hostapd_wpa_psk));
  if (bss->ssid.wpa_psk == ((void*)0))
   return -1;
  os_memcpy(bss->ssid.wpa_psk->psk, ssid->psk, PMK_LEN);
  bss->ssid.wpa_psk->group = 1;
  bss->ssid.wpa_psk_set = 1;
 } else if (ssid->passphrase) {
  bss->ssid.wpa_passphrase = os_strdup(ssid->passphrase);
 } else if (ssid->wep_key_len[0] || ssid->wep_key_len[1] ||
     ssid->wep_key_len[2] || ssid->wep_key_len[3]) {
  struct hostapd_wep_keys *wep = &bss->ssid.wep;
  int i;
  for (i = 0; i < NUM_WEP_KEYS; i++) {
   if (ssid->wep_key_len[i] == 0)
    continue;
   wep->key[i] = os_memdup(ssid->wep_key[i],
      ssid->wep_key_len[i]);
   if (wep->key[i] == ((void*)0))
    return -1;
   wep->len[i] = ssid->wep_key_len[i];
  }
  wep->idx = ssid->wep_tx_keyidx;
  wep->keys_set = 1;
 }

 if (wpa_s->conf->go_interworking) {
  wpa_printf(MSG_DEBUG,
      "P2P: Enable Interworking with access_network_type: %d",
      wpa_s->conf->go_access_network_type);
  bss->interworking = wpa_s->conf->go_interworking;
  bss->access_network_type = wpa_s->conf->go_access_network_type;
  bss->internet = wpa_s->conf->go_internet;
  if (wpa_s->conf->go_venue_group) {
   wpa_printf(MSG_DEBUG,
       "P2P: Venue group: %d  Venue type: %d",
       wpa_s->conf->go_venue_group,
       wpa_s->conf->go_venue_type);
   bss->venue_group = wpa_s->conf->go_venue_group;
   bss->venue_type = wpa_s->conf->go_venue_type;
   bss->venue_info_set = 1;
  }
 }

 if (ssid->ap_max_inactivity)
  bss->ap_max_inactivity = ssid->ap_max_inactivity;

 if (ssid->dtim_period)
  bss->dtim_period = ssid->dtim_period;
 else if (wpa_s->conf->dtim_period)
  bss->dtim_period = wpa_s->conf->dtim_period;

 if (ssid->beacon_int)
  conf->beacon_int = ssid->beacon_int;
 else if (wpa_s->conf->beacon_int)
  conf->beacon_int = wpa_s->conf->beacon_int;
 if ((bss->wpa & 2) && bss->rsn_pairwise == 0)
  bss->rsn_pairwise = bss->wpa_pairwise;
 bss->wpa_group = wpa_select_ap_group_cipher(bss->wpa, bss->wpa_pairwise,
          bss->rsn_pairwise);

 if (bss->wpa && bss->ieee802_1x)
  bss->ssid.security_policy = SECURITY_WPA;
 else if (bss->wpa)
  bss->ssid.security_policy = SECURITY_WPA_PSK;
 else if (bss->ieee802_1x) {
  int cipher = WPA_CIPHER_NONE;
  bss->ssid.security_policy = SECURITY_IEEE_802_1X;
  bss->ssid.wep.default_len = bss->default_wep_key_len;
  if (bss->default_wep_key_len)
   cipher = bss->default_wep_key_len >= 13 ?
    WPA_CIPHER_WEP104 : WPA_CIPHER_WEP40;
  bss->wpa_group = cipher;
  bss->wpa_pairwise = cipher;
  bss->rsn_pairwise = cipher;
 } else if (bss->ssid.wep.keys_set) {
  int cipher = WPA_CIPHER_WEP40;
  if (bss->ssid.wep.len[0] >= 13)
   cipher = WPA_CIPHER_WEP104;
  bss->ssid.security_policy = SECURITY_STATIC_WEP;
  bss->wpa_group = cipher;
  bss->wpa_pairwise = cipher;
  bss->rsn_pairwise = cipher;
 } else {
  bss->ssid.security_policy = SECURITY_PLAINTEXT;
  bss->wpa_group = WPA_CIPHER_NONE;
  bss->wpa_pairwise = WPA_CIPHER_NONE;
  bss->rsn_pairwise = WPA_CIPHER_NONE;
 }

 if (bss->wpa_group_rekey < 86400 && (bss->wpa & 2) &&
     (bss->wpa_group == WPA_CIPHER_CCMP ||
      bss->wpa_group == WPA_CIPHER_GCMP ||
      bss->wpa_group == WPA_CIPHER_CCMP_256 ||
      bss->wpa_group == WPA_CIPHER_GCMP_256)) {




  bss->wpa_group_rekey = 86400;
 }
 if (wpa_s->max_stations &&
     wpa_s->max_stations < wpa_s->conf->max_num_sta)
  bss->max_num_sta = wpa_s->max_stations;
 else
  bss->max_num_sta = wpa_s->conf->max_num_sta;

 if (!bss->isolate)
  bss->isolate = wpa_s->conf->ap_isolate;

 bss->disassoc_low_ack = wpa_s->conf->disassoc_low_ack;

 if (wpa_s->conf->ap_vendor_elements) {
  bss->vendor_elements =
   wpabuf_dup(wpa_s->conf->ap_vendor_elements);
 }

 bss->ftm_responder = wpa_s->conf->ftm_responder;
 bss->ftm_initiator = wpa_s->conf->ftm_initiator;

 return 0;
}
