
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ifname; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;


 scalar_t__ os_strcmp (int ,char const*) ;

struct wpa_supplicant * wpa_supplicant_get_iface(struct wpa_global *global,
       const char *ifname)
{
 struct wpa_supplicant *wpa_s;

 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (os_strcmp(wpa_s->ifname, ifname) == 0)
   return wpa_s;
 }
 return ((void*)0);
}
