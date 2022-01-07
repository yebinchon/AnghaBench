
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; } ;
struct TYPE_2__ {int iface; } ;


 scalar_t__ os_strcmp (char const*,int ) ;

__attribute__((used)) static int ifname_in_use(struct hapd_interfaces *interfaces, const char *ifname)
{
 size_t i, j;

 for (i = 0; i < interfaces->count; i++) {
  struct hostapd_iface *iface = interfaces->iface[i];
  for (j = 0; j < iface->num_bss; j++) {
   struct hostapd_data *hapd = iface->bss[j];
   if (os_strcmp(ifname, hapd->conf->iface) == 0)
    return 1;
  }
 }

 return 0;
}
