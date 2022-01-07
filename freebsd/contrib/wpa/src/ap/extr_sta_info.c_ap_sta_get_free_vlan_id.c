
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_vlan {int vlan_id; struct hostapd_vlan* next; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {struct hostapd_vlan* vlan; } ;


 int MAX_VLAN_ID ;

__attribute__((used)) static int ap_sta_get_free_vlan_id(struct hostapd_data *hapd)
{
 struct hostapd_vlan *vlan;
 int vlan_id = MAX_VLAN_ID + 2;

retry:
 for (vlan = hapd->conf->vlan; vlan; vlan = vlan->next) {
  if (vlan->vlan_id == vlan_id) {
   vlan_id++;
   goto retry;
  }
 }
 return vlan_id;
}
