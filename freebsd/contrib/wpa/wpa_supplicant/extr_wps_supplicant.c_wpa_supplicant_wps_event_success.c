
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wps_success; int bssid; scalar_t__ extra_blacklist_count; scalar_t__ current_ssid; } ;


 int MSG_INFO ;
 int WPS_EVENT_SUCCESS ;
 int eloop_register_timeout (int,int ,int ,struct wpa_supplicant*,int *) ;
 int wpa_msg (struct wpa_supplicant*,int ,int ) ;
 int wpas_clear_temp_disabled (struct wpa_supplicant*,scalar_t__,int) ;
 int wpas_notify_wps_event_success (struct wpa_supplicant*) ;
 int wpas_p2p_wps_success (struct wpa_supplicant*,int ,int ) ;
 int wpas_wps_reenable_networks_cb ;

__attribute__((used)) static void wpa_supplicant_wps_event_success(struct wpa_supplicant *wpa_s)
{
 wpa_msg(wpa_s, MSG_INFO, WPS_EVENT_SUCCESS);
 wpa_s->wps_success = 1;
 wpas_notify_wps_event_success(wpa_s);
 if (wpa_s->current_ssid)
  wpas_clear_temp_disabled(wpa_s, wpa_s->current_ssid, 1);
 wpa_s->extra_blacklist_count = 0;






 eloop_register_timeout(10, 0, wpas_wps_reenable_networks_cb, wpa_s,
          ((void*)0));

 wpas_p2p_wps_success(wpa_s, wpa_s->bssid, 0);
}
