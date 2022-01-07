
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int * full_dynamic_vlan; TYPE_1__* conf; } ;
struct TYPE_2__ {int vlan; } ;


 int full_dynamic_vlan_deinit (int *) ;
 int vlan_dynamic_remove (struct hostapd_data*,int ) ;

void vlan_deinit(struct hostapd_data *hapd)
{
 vlan_dynamic_remove(hapd, hapd->conf->vlan);





}
