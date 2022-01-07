
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ sched_scanning; int conf; int eapol; int wpa; struct wpa_ssid* current_ssid; TYPE_1__ sme; struct wpa_ssid* last_ssid; } ;
struct wpa_ssid {int disabled; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPA_AUTHENTICATING ;
 int eapol_sm_invalidate_cached_session (int ) ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 scalar_t__ wpa_config_remove_network (int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_set_config (int ,int *) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 int wpas_notify_network_removed (struct wpa_supplicant*,struct wpa_ssid*) ;

int wpa_supplicant_remove_network(struct wpa_supplicant *wpa_s, int id)
{
 struct wpa_ssid *ssid;
 int was_disabled;

 ssid = wpa_config_get_network(wpa_s->conf, id);
 if (!ssid)
  return -1;
 wpas_notify_network_removed(wpa_s, ssid);

 if (wpa_s->last_ssid == ssid)
  wpa_s->last_ssid = ((void*)0);

 if (ssid == wpa_s->current_ssid || !wpa_s->current_ssid) {







  eapol_sm_invalidate_cached_session(wpa_s->eapol);
 }

 if (ssid == wpa_s->current_ssid) {
  wpa_sm_set_config(wpa_s->wpa, ((void*)0));
  eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));

  if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
   wpa_s->own_disconnect_req = 1;
  wpa_supplicant_deauthenticate(wpa_s,
           WLAN_REASON_DEAUTH_LEAVING);
 }

 was_disabled = ssid->disabled;

 if (wpa_config_remove_network(wpa_s->conf, id) < 0)
  return -2;

 if (!was_disabled && wpa_s->sched_scanning) {
  wpa_printf(MSG_DEBUG,
      "Stop ongoing sched_scan to remove network from filters");
  wpa_supplicant_cancel_sched_scan(wpa_s);
  wpa_supplicant_req_scan(wpa_s, 0, 0);
 }

 return 0;
}
