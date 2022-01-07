
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {int key_mgmt; int disabled; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int WPA_KEY_MGMT_WPS ;

int wpas_wps_searching(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid;

 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if ((ssid->key_mgmt & WPA_KEY_MGMT_WPS) && !ssid->disabled)
   return 1;
 }

 return 0;
}
