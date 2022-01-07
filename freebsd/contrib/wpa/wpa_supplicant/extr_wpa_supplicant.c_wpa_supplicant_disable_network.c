
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ sched_scanning; struct wpa_ssid* current_ssid; TYPE_1__* conf; } ;
struct wpa_ssid {int disabled; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPA_AUTHENTICATING ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 int wpas_notify_network_enabled_changed (struct wpa_supplicant*,struct wpa_ssid*) ;

void wpa_supplicant_disable_network(struct wpa_supplicant *wpa_s,
        struct wpa_ssid *ssid)
{
 struct wpa_ssid *other_ssid;
 int was_disabled;

 if (ssid == ((void*)0)) {
  if (wpa_s->sched_scanning)
   wpa_supplicant_cancel_sched_scan(wpa_s);

  for (other_ssid = wpa_s->conf->ssid; other_ssid;
       other_ssid = other_ssid->next) {
   was_disabled = other_ssid->disabled;
   if (was_disabled == 2)
    continue;


   other_ssid->disabled = 1;

   if (was_disabled != other_ssid->disabled)
    wpas_notify_network_enabled_changed(
     wpa_s, other_ssid);
  }
  if (wpa_s->current_ssid) {
   if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
    wpa_s->own_disconnect_req = 1;
   wpa_supplicant_deauthenticate(
    wpa_s, WLAN_REASON_DEAUTH_LEAVING);
  }
 } else if (ssid->disabled != 2) {
  if (ssid == wpa_s->current_ssid) {
   if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
    wpa_s->own_disconnect_req = 1;
   wpa_supplicant_deauthenticate(
    wpa_s, WLAN_REASON_DEAUTH_LEAVING);
  }

  was_disabled = ssid->disabled;

  ssid->disabled = 1;

  if (was_disabled != ssid->disabled) {
   wpas_notify_network_enabled_changed(wpa_s, ssid);
   if (wpa_s->sched_scanning) {
    wpa_printf(MSG_DEBUG, "Stop ongoing sched_scan "
        "to remove network from filters");
    wpa_supplicant_cancel_sched_scan(wpa_s);
    wpa_supplicant_req_scan(wpa_s, 0, 0);
   }
  }
 }
}
