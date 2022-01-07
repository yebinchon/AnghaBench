
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_description {scalar_t__ untagged; scalar_t__* tagged; int notempty; } ;
struct hostapd_vlan {scalar_t__ vlan_id; struct hostapd_vlan* next; int vlan_desc; } ;


 int MAX_NUM_TAGGED_VLAN ;
 scalar_t__ MAX_VLAN_ID ;
 scalar_t__ VLAN_ID_WILDCARD ;
 int vlan_compare (int *,struct vlan_description*) ;

int hostapd_vlan_valid(struct hostapd_vlan *vlan,
         struct vlan_description *vlan_desc)
{
 struct hostapd_vlan *v = vlan;
 int i;

 if (!vlan_desc->notempty || vlan_desc->untagged < 0 ||
     vlan_desc->untagged > MAX_VLAN_ID)
  return 0;
 for (i = 0; i < MAX_NUM_TAGGED_VLAN; i++) {
  if (vlan_desc->tagged[i] < 0 ||
      vlan_desc->tagged[i] > MAX_VLAN_ID)
   return 0;
 }
 if (!vlan_desc->untagged && !vlan_desc->tagged[0])
  return 0;

 while (v) {
  if (!vlan_compare(&v->vlan_desc, vlan_desc) ||
      v->vlan_id == VLAN_ID_WILDCARD)
   return 1;
  v = v->next;
 }
 return 0;
}
