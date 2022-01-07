
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int reassociate; int disconnected; int current_ssid; } ;
struct wpa_ssid {int disabled; scalar_t__ owe_transition_bss_select_count; } ;


 int wpas_clear_temp_disabled (struct wpa_supplicant*,struct wpa_ssid*,int) ;
 int wpas_notify_network_enabled_changed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static void wpa_supplicant_enable_one_network(struct wpa_supplicant *wpa_s,
           struct wpa_ssid *ssid)
{
 if (!ssid || !ssid->disabled || ssid->disabled == 2)
  return;

 ssid->disabled = 0;
 ssid->owe_transition_bss_select_count = 0;
 wpas_clear_temp_disabled(wpa_s, ssid, 1);
 wpas_notify_network_enabled_changed(wpa_s, ssid);





 if (!wpa_s->current_ssid && !wpa_s->disconnected)
  wpa_s->reassociate = 1;
}
