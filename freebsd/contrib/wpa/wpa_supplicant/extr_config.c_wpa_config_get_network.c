
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int id; struct wpa_ssid* next; } ;
struct wpa_config {struct wpa_ssid* ssid; } ;



struct wpa_ssid * wpa_config_get_network(struct wpa_config *config, int id)
{
 struct wpa_ssid *ssid;

 ssid = config->ssid;
 while (ssid) {
  if (id == ssid->id)
   break;
  ssid = ssid->next;
 }

 return ssid;
}
