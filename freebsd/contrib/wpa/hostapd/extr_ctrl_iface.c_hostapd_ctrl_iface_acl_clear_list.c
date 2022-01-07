
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_acl_entry {int addr; } ;


 int hostapd_remove_acl_mac (struct mac_acl_entry**,int*,int ) ;

__attribute__((used)) static void hostapd_ctrl_iface_acl_clear_list(struct mac_acl_entry **acl,
           int *num)
{
 while (*num)
  hostapd_remove_acl_mac(acl, num, (*acl)[0].addr);
}
