
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ key_mgmt; int reassociate; int * ctrl_iface; struct wpa_config* conf; int wpa; int eapol; scalar_t__ current_ssid; int * confanother; int * confname; } ;
struct wpa_config {unsigned int changed_parameters; int ap_scan; int fast_reauth; scalar_t__ ctrl_interface; } ;


 int FALSE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPA_AUTHENTICATING ;
 scalar_t__ WPA_KEY_MGMT_DPP ;
 scalar_t__ WPA_KEY_MGMT_OWE ;
 int eapol_sm_invalidate_cached_session (int ) ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 int eapol_sm_notify_eap_success (int ,int ) ;
 scalar_t__ os_strcmp (scalar_t__,scalar_t__) ;
 int rsn_preauth_deinit (int ) ;
 int wpa_config_free (struct wpa_config*) ;
 struct wpa_config* wpa_config_read (int *,struct wpa_config*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (scalar_t__) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,int *) ;
 int wpa_sm_pmksa_cache_flush (int ,int *) ;
 int wpa_sm_set_config (int ,int *) ;
 int wpa_sm_set_fast_reauth (int ,int ) ;
 int wpa_supplicant_clear_status (struct wpa_supplicant*) ;
 int wpa_supplicant_ctrl_iface_deinit (int *) ;
 int * wpa_supplicant_ctrl_iface_init (struct wpa_supplicant*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 scalar_t__ wpa_supplicant_enabled_networks (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 int wpa_supplicant_update_config (struct wpa_supplicant*) ;
 int wpas_notify_ap_scan_changed (struct wpa_supplicant*) ;

int wpa_supplicant_reload_configuration(struct wpa_supplicant *wpa_s)
{
 struct wpa_config *conf;
 int reconf_ctrl;
 int old_ap_scan;

 if (wpa_s->confname == ((void*)0))
  return -1;
 conf = wpa_config_read(wpa_s->confname, ((void*)0));
 if (conf == ((void*)0)) {
  wpa_msg(wpa_s, MSG_ERROR, "Failed to parse the configuration "
   "file '%s' - exiting", wpa_s->confname);
  return -1;
 }
 if (wpa_s->confanother &&
     !wpa_config_read(wpa_s->confanother, conf)) {
  wpa_msg(wpa_s, MSG_ERROR,
   "Failed to parse the configuration file '%s' - exiting",
   wpa_s->confanother);
  return -1;
 }

 conf->changed_parameters = (unsigned int) -1;

 reconf_ctrl = !!conf->ctrl_interface != !!wpa_s->conf->ctrl_interface
  || (conf->ctrl_interface && wpa_s->conf->ctrl_interface &&
      os_strcmp(conf->ctrl_interface,
         wpa_s->conf->ctrl_interface) != 0);

 if (reconf_ctrl && wpa_s->ctrl_iface) {
  wpa_supplicant_ctrl_iface_deinit(wpa_s->ctrl_iface);
  wpa_s->ctrl_iface = ((void*)0);
 }

 eapol_sm_invalidate_cached_session(wpa_s->eapol);
 if (wpa_s->current_ssid) {
  if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
   wpa_s->own_disconnect_req = 1;
  wpa_supplicant_deauthenticate(wpa_s,
           WLAN_REASON_DEAUTH_LEAVING);
 }





 if (wpa_key_mgmt_wpa_psk(wpa_s->key_mgmt) ||
     wpa_s->key_mgmt == WPA_KEY_MGMT_OWE ||
     wpa_s->key_mgmt == WPA_KEY_MGMT_DPP) {




  eapol_sm_notify_eap_success(wpa_s->eapol, FALSE);
 }
 eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
 wpa_sm_set_config(wpa_s->wpa, ((void*)0));
 wpa_sm_pmksa_cache_flush(wpa_s->wpa, ((void*)0));
 wpa_sm_set_fast_reauth(wpa_s->wpa, wpa_s->conf->fast_reauth);
 rsn_preauth_deinit(wpa_s->wpa);

 old_ap_scan = wpa_s->conf->ap_scan;
 wpa_config_free(wpa_s->conf);
 wpa_s->conf = conf;
 if (old_ap_scan != wpa_s->conf->ap_scan)
  wpas_notify_ap_scan_changed(wpa_s);

 if (reconf_ctrl)
  wpa_s->ctrl_iface = wpa_supplicant_ctrl_iface_init(wpa_s);

 wpa_supplicant_update_config(wpa_s);

 wpa_supplicant_clear_status(wpa_s);
 if (wpa_supplicant_enabled_networks(wpa_s)) {
  wpa_s->reassociate = 1;
  wpa_supplicant_req_scan(wpa_s, 0, 0);
 }
 wpa_dbg(wpa_s, MSG_DEBUG, "Reconfiguration completed");
 return 0;
}
