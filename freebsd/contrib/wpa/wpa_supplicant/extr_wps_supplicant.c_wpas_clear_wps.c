
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int own_disconnect_req; TYPE_1__* conf; int eapol; int wpa; struct wpa_ssid* current_ssid; scalar_t__ known_wps_freq; scalar_t__ after_wps; } ;
struct wpa_ssid {int key_mgmt; int id; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int WLAN_REASON_DEAUTH_LEAVING ;
 int WPA_KEY_MGMT_WPS ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_config_remove_network (TYPE_1__*,int) ;
 int wpa_sm_set_config (int ,int *) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpas_notify_network_removed (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_wps_clear_ap_info (struct wpa_supplicant*) ;
 int wpas_wps_clear_timeout ;
 int wpas_wps_reenable_networks (struct wpa_supplicant*) ;
 int wpas_wps_timeout ;

__attribute__((used)) static void wpas_clear_wps(struct wpa_supplicant *wpa_s)
{
 int id;
 struct wpa_ssid *ssid, *remove_ssid = ((void*)0), *prev_current;

 wpa_s->after_wps = 0;
 wpa_s->known_wps_freq = 0;

 prev_current = wpa_s->current_ssid;


 wpas_wps_reenable_networks(wpa_s);

 eloop_cancel_timeout(wpas_wps_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_wps_clear_timeout, wpa_s, ((void*)0));


 ssid = wpa_s->conf->ssid;
 while (ssid) {
  if (ssid->key_mgmt & WPA_KEY_MGMT_WPS) {
   if (ssid == wpa_s->current_ssid) {
    wpa_s->own_disconnect_req = 1;
    wpa_supplicant_deauthenticate(
     wpa_s, WLAN_REASON_DEAUTH_LEAVING);
   }
   id = ssid->id;
   remove_ssid = ssid;
  } else
   id = -1;
  ssid = ssid->next;
  if (id >= 0) {
   if (prev_current == remove_ssid) {
    wpa_sm_set_config(wpa_s->wpa, ((void*)0));
    eapol_sm_notify_config(wpa_s->eapol, ((void*)0),
             ((void*)0));
   }
   wpas_notify_network_removed(wpa_s, remove_ssid);
   wpa_config_remove_network(wpa_s->conf, id);
  }
 }

 wpas_wps_clear_ap_info(wpa_s);
}
