
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_config {size_t num_bss; TYPE_1__** bss; } ;
struct TYPE_2__ {int bssid; } ;


 scalar_t__ hostapd_mac_comp (int ,void const*) ;

__attribute__((used)) static int mac_in_conf(struct hostapd_config *conf, const void *a)
{
 size_t i;

 for (i = 0; i < conf->num_bss; i++) {
  if (hostapd_mac_comp(conf->bss[i]->bssid, a) == 0) {
   return 1;
  }
 }

 return 0;
}
