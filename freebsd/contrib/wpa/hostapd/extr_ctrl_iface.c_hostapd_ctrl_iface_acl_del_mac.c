
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vlan_description {int dummy; } ;
struct mac_acl_entry {int dummy; } ;


 int ETH_ALEN ;
 scalar_t__ hostapd_maclist_found (struct mac_acl_entry*,int,int *,struct vlan_description*) ;
 int hostapd_remove_acl_mac (struct mac_acl_entry**,int*,int *) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;

__attribute__((used)) static int hostapd_ctrl_iface_acl_del_mac(struct mac_acl_entry **acl, int *num,
       const char *txtaddr)
{
 u8 addr[ETH_ALEN];
 struct vlan_description vlan_id;

 if (!(*num))
  return 0;

 if (hwaddr_aton(txtaddr, addr))
  return -1;

 if (hostapd_maclist_found(*acl, *num, addr, &vlan_id))
  hostapd_remove_acl_mac(acl, num, addr);

 return 0;
}
