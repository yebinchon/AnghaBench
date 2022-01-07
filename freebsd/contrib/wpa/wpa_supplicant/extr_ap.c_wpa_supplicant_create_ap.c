
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int num_modes; int modes; } ;
struct wpa_supplicant {int key_mgmt; scalar_t__ pairwise_cipher; int drv_flags; int assoc_freq; struct hostapd_iface* ap_iface; int p2p_go_acs_band; scalar_t__ p2p_go_do_acs; int own_addr; int bssid; int eapol; struct wpa_ssid* current_ssid; int drv_priv; int driver; int ext_eapol_frame_io; TYPE_4__* global; TYPE_3__* p2pdev; TYPE_2__* conf; int extended_capa_len; int extended_capa_mask; int extended_capa; int probe_resp_offloads; int drv_smps_modes; TYPE_1__ hw; } ;
struct wpa_ssid {scalar_t__ ssid_len; int mode; int frequency; int key_mgmt; int acs; int pairwise_cipher; int proto; int * ssid; } ;
struct TYPE_14__ {int freq; } ;
struct wpa_driver_associate_params {scalar_t__ ssid_len; int key_mgmt_suite; scalar_t__ pairwise_suite; scalar_t__ group_suite; int p2p; int uapsd; TYPE_5__ freq; int wpa_proto; int mode; int * ssid; } ;
struct hostapd_iface {int drv_flags; size_t num_bss; struct hostapd_config* conf; TYPE_6__** bss; int extended_capa_len; int extended_capa_mask; int extended_capa; int probe_resp_offloads; int smps_modes; struct wpa_supplicant* owner; } ;
struct hostapd_data {int dummy; } ;
struct hostapd_config {size_t num_bss; int hw_mode; scalar_t__ channel; TYPE_9__** bss; int wmm_ac_params; } ;
typedef int params ;
struct TYPE_16__ {int wmm_enabled; int wmm_uapsd; void* p2p; } ;
struct TYPE_15__ {int drv_priv; int driver; int own_addr; int ext_eapol_frame_io; struct wpa_supplicant* setup_complete_cb_ctx; int setup_complete_cb; int p2p_group; int p2p; struct wpa_supplicant* new_psk_cb_ctx; int new_psk_cb; struct wpa_supplicant* sta_authorized_cb_ctx; int sta_authorized_cb; struct wpa_supplicant* wps_event_cb_ctx; int wps_event_cb; struct wpa_supplicant* wps_reg_success_cb_ctx; int wps_reg_success_cb; struct wpa_supplicant* vendor_action_cb_ctx; int vendor_action_cb; struct wpa_supplicant* public_action_cb_ctx; int public_action_cb; TYPE_3__* msg_ctx_parent; struct wpa_supplicant* msg_ctx; } ;
struct TYPE_13__ {int p2p; } ;
struct TYPE_12__ {int ap_uapsd; scalar_t__ set_ap_uapsd; } ;
struct TYPE_11__ {int wmm_ac_params; } ;


 int ETH_ALEN ;
 int IEEE80211_MODE_AP ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_WARNING ;
 void* P2P_ENABLED ;
 void* P2P_GROUP_FORMATION ;
 void* P2P_GROUP_OWNER ;



 int WPA_DRIVER_FLAGS_AP_UAPSD ;
 int WPA_IF_AP_BSS ;
 int WPA_IF_P2P_GO ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_PSK ;
 int ap_new_psk_cb ;
 int ap_probe_req_rx ;
 int ap_public_action_rx ;
 int ap_sta_authorized_cb ;
 int ap_vendor_action_rx ;
 int ap_wps_event_cb ;
 int ap_wps_reg_success_cb ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 TYPE_6__* hostapd_alloc_bss_data (struct hostapd_iface*,struct hostapd_config*,TYPE_9__*) ;
 struct hostapd_iface* hostapd_alloc_iface () ;
 struct hostapd_config* hostapd_config_defaults () ;
 int hostapd_register_probereq_cb (TYPE_6__*,int ,struct wpa_supplicant*) ;
 scalar_t__ hostapd_setup_interface (struct hostapd_iface*) ;
 scalar_t__ ieee80211_is_dfs (int,int ,int ) ;
 TYPE_6__** os_calloc (size_t,int) ;
 int os_memcpy (int ,int ,int) ;
 int os_memset (struct wpa_driver_associate_params*,int ,int) ;
 scalar_t__ wpa_drv_associate (struct wpa_supplicant*,struct wpa_driver_associate_params*) ;
 int wpa_drv_get_ext_capa (struct wpa_supplicant*,int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 scalar_t__ wpa_pick_pairwise_cipher (int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_ssid_txt (int *,scalar_t__) ;
 int wpa_supplicant_ap_deinit (struct wpa_supplicant*) ;
 scalar_t__ wpa_supplicant_conf_ap (struct wpa_supplicant*,struct wpa_ssid*,struct hostapd_config*) ;
 int wpas_ap_configured_cb ;
 int wpas_p2p_group_init (struct wpa_supplicant*,struct wpa_ssid*) ;

int wpa_supplicant_create_ap(struct wpa_supplicant *wpa_s,
        struct wpa_ssid *ssid)
{
 struct wpa_driver_associate_params params;
 struct hostapd_iface *hapd_iface;
 struct hostapd_config *conf;
 size_t i;

 if (ssid->ssid == ((void*)0) || ssid->ssid_len == 0) {
  wpa_printf(MSG_ERROR, "No SSID configured for AP mode");
  return -1;
 }

 wpa_supplicant_ap_deinit(wpa_s);

 wpa_printf(MSG_DEBUG, "Setting up AP (SSID='%s')",
     wpa_ssid_txt(ssid->ssid, ssid->ssid_len));

 os_memset(&params, 0, sizeof(params));
 params.ssid = ssid->ssid;
 params.ssid_len = ssid->ssid_len;
 switch (ssid->mode) {
 case 130:
 case 129:
 case 128:
  params.mode = IEEE80211_MODE_AP;
  break;
 default:
  return -1;
 }
 if (ssid->frequency == 0)
  ssid->frequency = 2462;
 params.freq.freq = ssid->frequency;

 params.wpa_proto = ssid->proto;
 if (ssid->key_mgmt & WPA_KEY_MGMT_PSK)
  wpa_s->key_mgmt = WPA_KEY_MGMT_PSK;
 else
  wpa_s->key_mgmt = WPA_KEY_MGMT_NONE;
 params.key_mgmt_suite = wpa_s->key_mgmt;

 wpa_s->pairwise_cipher = wpa_pick_pairwise_cipher(ssid->pairwise_cipher,
         1);
 if (wpa_s->pairwise_cipher < 0) {
  wpa_printf(MSG_WARNING, "WPA: Failed to select pairwise "
      "cipher.");
  return -1;
 }
 params.pairwise_suite = wpa_s->pairwise_cipher;
 params.group_suite = params.pairwise_suite;







 if (wpa_s->p2pdev->set_ap_uapsd)
  params.uapsd = wpa_s->p2pdev->ap_uapsd;
 else if (params.p2p && (wpa_s->drv_flags & WPA_DRIVER_FLAGS_AP_UAPSD))
  params.uapsd = 1;
 else
  params.uapsd = -1;

 if (ieee80211_is_dfs(params.freq.freq, wpa_s->hw.modes,
        wpa_s->hw.num_modes))
  params.freq.freq = 0;

 if (params.p2p)
  wpa_drv_get_ext_capa(wpa_s, WPA_IF_P2P_GO);
 else
  wpa_drv_get_ext_capa(wpa_s, WPA_IF_AP_BSS);

 if (wpa_drv_associate(wpa_s, &params) < 0) {
  wpa_msg(wpa_s, MSG_INFO, "Failed to start AP functionality");
  return -1;
 }

 wpa_s->ap_iface = hapd_iface = hostapd_alloc_iface();
 if (hapd_iface == ((void*)0))
  return -1;
 hapd_iface->owner = wpa_s;
 hapd_iface->drv_flags = wpa_s->drv_flags;
 hapd_iface->smps_modes = wpa_s->drv_smps_modes;
 hapd_iface->probe_resp_offloads = wpa_s->probe_resp_offloads;
 hapd_iface->extended_capa = wpa_s->extended_capa;
 hapd_iface->extended_capa_mask = wpa_s->extended_capa_mask;
 hapd_iface->extended_capa_len = wpa_s->extended_capa_len;

 wpa_s->ap_iface->conf = conf = hostapd_config_defaults();
 if (conf == ((void*)0)) {
  wpa_supplicant_ap_deinit(wpa_s);
  return -1;
 }

 os_memcpy(wpa_s->ap_iface->conf->wmm_ac_params,
    wpa_s->conf->wmm_ac_params,
    sizeof(wpa_s->conf->wmm_ac_params));

 if (params.uapsd > 0) {
  conf->bss[0]->wmm_enabled = 1;
  conf->bss[0]->wmm_uapsd = 1;
 }

 if (wpa_supplicant_conf_ap(wpa_s, ssid, conf)) {
  wpa_printf(MSG_ERROR, "Failed to create AP configuration");
  wpa_supplicant_ap_deinit(wpa_s);
  return -1;
 }
 hapd_iface->num_bss = conf->num_bss;
 hapd_iface->bss = os_calloc(conf->num_bss,
        sizeof(struct hostapd_data *));
 if (hapd_iface->bss == ((void*)0)) {
  wpa_supplicant_ap_deinit(wpa_s);
  return -1;
 }

 for (i = 0; i < conf->num_bss; i++) {
  hapd_iface->bss[i] =
   hostapd_alloc_bss_data(hapd_iface, conf,
            conf->bss[i]);
  if (hapd_iface->bss[i] == ((void*)0)) {
   wpa_supplicant_ap_deinit(wpa_s);
   return -1;
  }

  hapd_iface->bss[i]->msg_ctx = wpa_s;
  hapd_iface->bss[i]->msg_ctx_parent = wpa_s->p2pdev;
  hapd_iface->bss[i]->public_action_cb = ap_public_action_rx;
  hapd_iface->bss[i]->public_action_cb_ctx = wpa_s;
  hapd_iface->bss[i]->vendor_action_cb = ap_vendor_action_rx;
  hapd_iface->bss[i]->vendor_action_cb_ctx = wpa_s;
  hostapd_register_probereq_cb(hapd_iface->bss[i],
          ap_probe_req_rx, wpa_s);
  hapd_iface->bss[i]->wps_reg_success_cb = ap_wps_reg_success_cb;
  hapd_iface->bss[i]->wps_reg_success_cb_ctx = wpa_s;
  hapd_iface->bss[i]->wps_event_cb = ap_wps_event_cb;
  hapd_iface->bss[i]->wps_event_cb_ctx = wpa_s;
  hapd_iface->bss[i]->sta_authorized_cb = ap_sta_authorized_cb;
  hapd_iface->bss[i]->sta_authorized_cb_ctx = wpa_s;







  hapd_iface->bss[i]->setup_complete_cb = wpas_ap_configured_cb;
  hapd_iface->bss[i]->setup_complete_cb_ctx = wpa_s;




 }

 os_memcpy(hapd_iface->bss[0]->own_addr, wpa_s->own_addr, ETH_ALEN);
 hapd_iface->bss[0]->driver = wpa_s->driver;
 hapd_iface->bss[0]->drv_priv = wpa_s->drv_priv;

 wpa_s->current_ssid = ssid;
 eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
 os_memcpy(wpa_s->bssid, wpa_s->own_addr, ETH_ALEN);
 wpa_s->assoc_freq = ssid->frequency;
 if (hostapd_setup_interface(wpa_s->ap_iface)) {
  wpa_printf(MSG_ERROR, "Failed to initialize AP interface");
  wpa_supplicant_ap_deinit(wpa_s);
  return -1;
 }

 return 0;
}
