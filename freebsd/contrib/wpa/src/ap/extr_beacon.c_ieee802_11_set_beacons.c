
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; TYPE_1__** bss; } ;
struct TYPE_2__ {scalar_t__ started; } ;


 scalar_t__ ieee802_11_set_beacon (TYPE_1__*) ;

int ieee802_11_set_beacons(struct hostapd_iface *iface)
{
 size_t i;
 int ret = 0;

 for (i = 0; i < iface->num_bss; i++) {
  if (iface->bss[i]->started &&
      ieee802_11_set_beacon(iface->bss[i]) < 0)
   ret = -1;
 }

 return ret;
}
