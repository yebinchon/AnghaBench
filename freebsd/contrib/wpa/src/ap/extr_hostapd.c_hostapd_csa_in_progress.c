
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {unsigned int num_bss; TYPE_1__** bss; } ;
struct TYPE_2__ {scalar_t__ csa_in_progress; } ;



int hostapd_csa_in_progress(struct hostapd_iface *iface)
{
 unsigned int i;

 for (i = 0; i < iface->num_bss; i++)
  if (iface->bss[i]->csa_in_progress)
   return 1;
 return 0;
}
