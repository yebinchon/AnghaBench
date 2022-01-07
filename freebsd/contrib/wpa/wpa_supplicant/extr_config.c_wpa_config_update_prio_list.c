
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {struct wpa_ssid* next; int * pnext; } ;
struct wpa_config {struct wpa_ssid* ssid; scalar_t__ num_prio; int * pssid; } ;


 int os_free (int *) ;
 scalar_t__ wpa_config_add_prio_network (struct wpa_config*,struct wpa_ssid*) ;

int wpa_config_update_prio_list(struct wpa_config *config)
{
 struct wpa_ssid *ssid;
 int ret = 0;

 os_free(config->pssid);
 config->pssid = ((void*)0);
 config->num_prio = 0;

 ssid = config->ssid;
 while (ssid) {
  ssid->pnext = ((void*)0);
  if (wpa_config_add_prio_network(config, ssid) < 0)
   ret = -1;
  ssid = ssid->next;
 }

 return ret;
}
