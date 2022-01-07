
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; int confname; } ;
struct wpa_ssid {scalar_t__ disabled; scalar_t__ disabled_for_connect; struct wpa_ssid* next; } ;
struct TYPE_2__ {scalar_t__ update_config; struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 scalar_t__ wpa_config_write (int ,TYPE_1__*) ;
 int wpa_printf (int ,char*) ;
 int wpas_notify_network_enabled_changed (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_wps_reenable_networks_cb ;

__attribute__((used)) static void wpas_wps_reenable_networks(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid;
 int changed = 0;

 eloop_cancel_timeout(wpas_wps_reenable_networks_cb, wpa_s, ((void*)0));

 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if (ssid->disabled_for_connect && ssid->disabled) {
   ssid->disabled_for_connect = 0;
   ssid->disabled = 0;
   wpas_notify_network_enabled_changed(wpa_s, ssid);
   changed++;
  }
 }

 if (changed) {

  if (wpa_s->conf->update_config &&
      wpa_config_write(wpa_s->confname, wpa_s->conf)) {
   wpa_printf(MSG_DEBUG, "WPS: Failed to update "
       "configuration");
  }

 }
}
