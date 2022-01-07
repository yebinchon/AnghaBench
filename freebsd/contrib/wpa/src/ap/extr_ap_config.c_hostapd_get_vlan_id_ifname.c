
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_vlan {int vlan_id; char const* ifname; struct hostapd_vlan* next; } ;



const char * hostapd_get_vlan_id_ifname(struct hostapd_vlan *vlan, int vlan_id)
{
 struct hostapd_vlan *v = vlan;
 while (v) {
  if (v->vlan_id == vlan_id)
   return v->ifname;
  v = v->next;
 }
 return ((void*)0);
}
