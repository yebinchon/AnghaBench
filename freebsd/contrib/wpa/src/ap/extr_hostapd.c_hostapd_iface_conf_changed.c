
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_config {size_t num_bss; TYPE_1__** bss; } ;
struct TYPE_2__ {int iface; } ;


 scalar_t__ os_strcmp (int ,int ) ;

__attribute__((used)) static int hostapd_iface_conf_changed(struct hostapd_config *newconf,
          struct hostapd_config *oldconf)
{
 size_t i;

 if (newconf->num_bss != oldconf->num_bss)
  return 1;

 for (i = 0; i < newconf->num_bss; i++) {
  if (os_strcmp(newconf->bss[i]->iface,
         oldconf->bss[i]->iface) != 0)
   return 1;
 }

 return 0;
}
