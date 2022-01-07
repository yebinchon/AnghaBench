
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vlan_description {int dummy; } ;
struct mac_acl_entry {struct vlan_description vlan_id; int addr; } ;


 int ETH_ALEN ;
 int os_memcmp (int ,int const*,int ) ;

int hostapd_maclist_found(struct mac_acl_entry *list, int num_entries,
     const u8 *addr, struct vlan_description *vlan_id)
{
 int start, end, middle, res;

 start = 0;
 end = num_entries - 1;

 while (start <= end) {
  middle = (start + end) / 2;
  res = os_memcmp(list[middle].addr, addr, ETH_ALEN);
  if (res == 0) {
   if (vlan_id)
    *vlan_id = list[middle].vlan_id;
   return 1;
  }
  if (res < 0)
   start = middle + 1;
  else
   end = middle - 1;
 }

 return 0;
}
