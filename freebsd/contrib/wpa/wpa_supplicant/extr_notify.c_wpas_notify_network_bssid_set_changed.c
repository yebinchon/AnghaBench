
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int * bssid; scalar_t__ bssid_set; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,char*) ;
 int wpa_drv_roaming (struct wpa_supplicant*,int,int *) ;

void wpas_notify_network_bssid_set_changed(struct wpa_supplicant *wpa_s,
        struct wpa_ssid *ssid)
{
 if (wpa_s->current_ssid != ssid)
  return;

 wpa_dbg(wpa_s, MSG_DEBUG,
  "Network bssid config changed for the current network - within-ESS roaming %s",
  ssid->bssid_set ? "disabled" : "enabled");

 wpa_drv_roaming(wpa_s, !ssid->bssid_set,
   ssid->bssid_set ? ssid->bssid : ((void*)0));
}
