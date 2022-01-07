
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* iface; } ;
struct hapd_interfaces {struct dynamic_iface* vlan_priv; } ;
struct dynamic_iface {int clean; struct dynamic_iface* next; scalar_t__ usage; int ifname; } ;
struct TYPE_2__ {struct hapd_interfaces* interfaces; } ;


 int os_free (struct dynamic_iface*) ;
 scalar_t__ os_strcmp (char const*,int ) ;

__attribute__((used)) static int dyn_iface_put(struct hostapd_data *hapd, const char *ifname)
{
 struct dynamic_iface *next, *prev = ((void*)0), **dynamic_ifaces;
 struct hapd_interfaces *interfaces;
 int clean;

 interfaces = hapd->iface->interfaces;
 dynamic_ifaces = &interfaces->vlan_priv;

 for (next = *dynamic_ifaces; next; next = next->next) {
  if (os_strcmp(ifname, next->ifname) == 0)
   break;
  prev = next;
 }

 if (!next)
  return 0;

 next->usage--;
 if (next->usage)
  return 0;

 if (prev)
  prev->next = next->next;
 else
  *dynamic_ifaces = next->next;
 clean = next->clean;
 os_free(next);

 return clean;
}
