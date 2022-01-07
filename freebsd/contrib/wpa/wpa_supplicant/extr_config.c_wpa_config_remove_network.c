
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int id; struct wpa_ssid* next; } ;
struct wpa_config {struct wpa_ssid* ssid; } ;


 int wpa_config_free_ssid (struct wpa_ssid*) ;
 int wpa_config_update_prio_list (struct wpa_config*) ;

int wpa_config_remove_network(struct wpa_config *config, int id)
{
 struct wpa_ssid *ssid, *prev = ((void*)0);

 ssid = config->ssid;
 while (ssid) {
  if (id == ssid->id)
   break;
  prev = ssid;
  ssid = ssid->next;
 }

 if (ssid == ((void*)0))
  return -1;

 if (prev)
  prev->next = ssid->next;
 else
  config->ssid = ssid->next;

 wpa_config_update_prio_list(config);
 wpa_config_free_ssid(ssid);
 return 0;
}
