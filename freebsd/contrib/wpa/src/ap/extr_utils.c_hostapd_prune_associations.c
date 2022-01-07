
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct prune_data {int const* addr; struct hostapd_data* hapd; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_4__ {int (* for_each_interface ) (TYPE_2__*,int ,struct prune_data*) ;} ;
struct TYPE_3__ {TYPE_2__* interfaces; } ;


 int prune_associations ;
 int stub1 (TYPE_2__*,int ,struct prune_data*) ;

void hostapd_prune_associations(struct hostapd_data *hapd, const u8 *addr)
{
 struct prune_data data;
 data.hapd = hapd;
 data.addr = addr;
 if (hapd->iface->interfaces &&
     hapd->iface->interfaces->for_each_interface)
  hapd->iface->interfaces->for_each_interface(
   hapd->iface->interfaces, prune_associations, &data);
}
