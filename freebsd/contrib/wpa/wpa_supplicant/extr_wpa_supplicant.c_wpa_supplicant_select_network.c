
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; int reassociate; int scan_req; struct wpa_ssid* connect_without_scan; scalar_t__ last_owe_group; int disconnected; int * next_scan_freqs; int eapol; struct wpa_ssid* current_ssid; TYPE_1__* conf; } ;
struct wpa_ssid {int disabled; scalar_t__ id; scalar_t__ mode; scalar_t__ owe_transition_bss_select_count; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int NORMAL_SCAN_REQ ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPAS_MODE_MESH ;
 scalar_t__ WPA_AUTHENTICATING ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 int os_free (int *) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_fast_associate (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int) ;
 int wpas_clear_temp_disabled (struct wpa_supplicant*,struct wpa_ssid*,int) ;
 int wpas_notify_network_enabled_changed (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_notify_network_selected (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_scan_reset_sched_scan (struct wpa_supplicant*) ;

void wpa_supplicant_select_network(struct wpa_supplicant *wpa_s,
       struct wpa_ssid *ssid)
{

 struct wpa_ssid *other_ssid;
 int disconnected = 0;

 if (ssid && ssid != wpa_s->current_ssid && wpa_s->current_ssid) {
  if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
   wpa_s->own_disconnect_req = 1;
  wpa_supplicant_deauthenticate(
   wpa_s, WLAN_REASON_DEAUTH_LEAVING);
  disconnected = 1;
 }

 if (ssid)
  wpas_clear_temp_disabled(wpa_s, ssid, 1);





 for (other_ssid = wpa_s->conf->ssid; other_ssid;
      other_ssid = other_ssid->next) {
  int was_disabled = other_ssid->disabled;
  if (was_disabled == 2)
   continue;

  other_ssid->disabled = ssid ? (ssid->id != other_ssid->id) : 0;
  if (was_disabled && !other_ssid->disabled)
   wpas_clear_temp_disabled(wpa_s, other_ssid, 0);

  if (was_disabled != other_ssid->disabled)
   wpas_notify_network_enabled_changed(wpa_s, other_ssid);
 }

 if (ssid && ssid == wpa_s->current_ssid && wpa_s->current_ssid &&
     wpa_s->wpa_state >= WPA_AUTHENTICATING) {

  wpa_printf(MSG_DEBUG, "Already associated with the "
      "selected network - do nothing");
  return;
 }

 if (ssid) {
  wpa_s->current_ssid = ssid;
  eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
  wpa_s->connect_without_scan =
   (ssid->mode == WPAS_MODE_MESH) ? ssid : ((void*)0);





  os_free(wpa_s->next_scan_freqs);
  wpa_s->next_scan_freqs = ((void*)0);
 } else {
  wpa_s->connect_without_scan = ((void*)0);
 }

 wpa_s->disconnected = 0;
 wpa_s->reassociate = 1;
 wpa_s->last_owe_group = 0;
 if (ssid)
  ssid->owe_transition_bss_select_count = 0;

 if (wpa_s->connect_without_scan ||
     wpa_supplicant_fast_associate(wpa_s) != 1) {
  wpa_s->scan_req = NORMAL_SCAN_REQ;
  wpas_scan_reset_sched_scan(wpa_s);
  wpa_supplicant_req_scan(wpa_s, 0, disconnected ? 100000 : 0);
 }

 if (ssid)
  wpas_notify_network_selected(wpa_s, ssid);
}
