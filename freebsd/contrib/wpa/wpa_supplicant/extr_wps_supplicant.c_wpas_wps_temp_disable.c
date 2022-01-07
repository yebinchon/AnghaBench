
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int own_disconnect_req; TYPE_1__* conf; scalar_t__ current_ssid; } ;
struct wpa_ssid {int disabled; int disabled_for_connect; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int WLAN_REASON_DEAUTH_LEAVING ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpas_notify_network_enabled_changed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static void wpas_wps_temp_disable(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *selected)
{
 struct wpa_ssid *ssid;

 if (wpa_s->current_ssid) {
  wpa_s->own_disconnect_req = 1;
  wpa_supplicant_deauthenticate(
   wpa_s, WLAN_REASON_DEAUTH_LEAVING);
 }


 ssid = wpa_s->conf->ssid;
 while (ssid) {
  int was_disabled = ssid->disabled;
  ssid->disabled_for_connect = 0;






  if (was_disabled != 2) {
   ssid->disabled = ssid != selected;
   if (was_disabled != ssid->disabled) {
    if (ssid->disabled)
     ssid->disabled_for_connect = 1;
    wpas_notify_network_enabled_changed(wpa_s,
            ssid);
   }
  }
  ssid = ssid->next;
 }
}
