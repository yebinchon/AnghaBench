
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ usec; scalar_t__ sec; } ;
struct wpa_supplicant {scalar_t__ wpa_state; scalar_t__ key_mgmt; scalar_t__ enabled_4addr_mode; scalar_t__ ieee80211ac; int last_tk; int last_tk_alg; scalar_t__ wnmsleep_used; int eapol; int * current_ssid; scalar_t__ ap_ies_from_associnfo; scalar_t__ assoc_freq; int * current_bss; int pending_bssid; int bssid; TYPE_1__ session_start; int session_length; int * ibss_rsn; } ;


 int ETH_ALEN ;
 int FALSE ;
 int WPA_ALG_NONE ;
 int WPA_DISCONNECTED ;
 scalar_t__ WPA_INTERFACE_DISABLED ;
 scalar_t__ WPA_KEY_MGMT_DPP ;
 scalar_t__ WPA_KEY_MGMT_OWE ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 int eapol_sm_notify_eap_success (int ,int ) ;
 int eapol_sm_notify_portEnabled (int ,int ) ;
 int eapol_sm_notify_portValid (int ,int ) ;
 int ibss_rsn_deinit (int *) ;
 int is_zero_ether_addr (int ) ;
 int os_memset (int ,int ,int) ;
 int os_reltime_age (TYPE_1__*,int *) ;
 scalar_t__ os_reltime_initialized (TYPE_1__*) ;
 int sme_clear_on_disassoc (struct wpa_supplicant*) ;
 int wnm_bss_keep_alive_deinit (struct wpa_supplicant*) ;
 int wnm_clear_coloc_intf_reporting (struct wpa_supplicant*) ;
 int wpa_drv_configure_frame_filters (struct wpa_supplicant*,int ) ;
 scalar_t__ wpa_drv_set_4addr_mode (struct wpa_supplicant*,int ) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (scalar_t__) ;
 int wpa_supplicant_ap_deinit (struct wpa_supplicant*) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;
 int wpas_notify_bssid_changed (struct wpa_supplicant*) ;
 int wpas_notify_session_length (struct wpa_supplicant*) ;
 int wpas_rrm_reset (struct wpa_supplicant*) ;

void wpa_supplicant_mark_disassoc(struct wpa_supplicant *wpa_s)
{
 int bssid_changed;

 wnm_bss_keep_alive_deinit(wpa_s);
 if (wpa_s->wpa_state == WPA_INTERFACE_DISABLED)
  return;

 if (os_reltime_initialized(&wpa_s->session_start)) {
  os_reltime_age(&wpa_s->session_start, &wpa_s->session_length);
  wpa_s->session_start.sec = 0;
  wpa_s->session_start.usec = 0;
  wpas_notify_session_length(wpa_s);
 }

 wpa_supplicant_set_state(wpa_s, WPA_DISCONNECTED);
 bssid_changed = !is_zero_ether_addr(wpa_s->bssid);
 os_memset(wpa_s->bssid, 0, ETH_ALEN);
 os_memset(wpa_s->pending_bssid, 0, ETH_ALEN);
 sme_clear_on_disassoc(wpa_s);
 wpa_s->current_bss = ((void*)0);
 wpa_s->assoc_freq = 0;

 if (bssid_changed)
  wpas_notify_bssid_changed(wpa_s);

 eapol_sm_notify_portEnabled(wpa_s->eapol, FALSE);
 eapol_sm_notify_portValid(wpa_s->eapol, FALSE);
 if (wpa_key_mgmt_wpa_psk(wpa_s->key_mgmt) ||
     wpa_s->key_mgmt == WPA_KEY_MGMT_OWE ||
     wpa_s->key_mgmt == WPA_KEY_MGMT_DPP)
  eapol_sm_notify_eap_success(wpa_s->eapol, FALSE);
 wpa_s->ap_ies_from_associnfo = 0;
 wpa_s->current_ssid = ((void*)0);
 eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
 wpa_s->key_mgmt = 0;

 wpas_rrm_reset(wpa_s);
 wpa_s->wnmsleep_used = 0;
 wnm_clear_coloc_intf_reporting(wpa_s);





 wpa_s->ieee80211ac = 0;

 if (wpa_s->enabled_4addr_mode && wpa_drv_set_4addr_mode(wpa_s, 0) == 0)
  wpa_s->enabled_4addr_mode = 0;
}
