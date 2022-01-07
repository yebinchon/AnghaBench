
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int id; struct wpa_ssid* next; int psk_list; } ;
struct wpa_config {struct wpa_ssid* ssid; } ;


 int dl_list_init (int *) ;
 struct wpa_ssid* os_zalloc (int) ;
 int wpa_config_update_prio_list (struct wpa_config*) ;

struct wpa_ssid * wpa_config_add_network(struct wpa_config *config)
{
 int id;
 struct wpa_ssid *ssid, *last = ((void*)0);

 id = -1;
 ssid = config->ssid;
 while (ssid) {
  if (ssid->id > id)
   id = ssid->id;
  last = ssid;
  ssid = ssid->next;
 }
 id++;

 ssid = os_zalloc(sizeof(*ssid));
 if (ssid == ((void*)0))
  return ((void*)0);
 ssid->id = id;
 dl_list_init(&ssid->psk_list);
 if (last)
  last->next = ssid;
 else
  config->ssid = ssid;

 wpa_config_update_prio_list(config);

 return ssid;
}
