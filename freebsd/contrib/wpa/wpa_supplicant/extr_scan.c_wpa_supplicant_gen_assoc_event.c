
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union wpa_event_data {int dummy; } wpa_event_data ;
struct wpa_supplicant {struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int dummy; } ;
typedef int data ;


 int EVENT_ASSOC ;
 int MSG_DEBUG ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_event (struct wpa_supplicant*,int ,union wpa_event_data*) ;
 struct wpa_ssid* wpa_supplicant_get_ssid (struct wpa_supplicant*) ;
 int wpa_supplicant_initiate_eapol (struct wpa_supplicant*) ;
 int wpas_notify_network_changed (struct wpa_supplicant*) ;

__attribute__((used)) static void wpa_supplicant_gen_assoc_event(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid;
 union wpa_event_data data;

 ssid = wpa_supplicant_get_ssid(wpa_s);
 if (ssid == ((void*)0))
  return;

 if (wpa_s->current_ssid == ((void*)0)) {
  wpa_s->current_ssid = ssid;
  wpas_notify_network_changed(wpa_s);
 }
 wpa_supplicant_initiate_eapol(wpa_s);
 wpa_dbg(wpa_s, MSG_DEBUG, "Already associated with a configured "
  "network - generating associated event");
 os_memset(&data, 0, sizeof(data));
 wpa_supplicant_event(wpa_s, EVENT_ASSOC, &data);
}
