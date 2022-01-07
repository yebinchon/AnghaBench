
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int untagged; int notempty; } ;
struct mac_acl_entry {TYPE_1__ vlan_id; int addr; } ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (TYPE_1__*,int ,int) ;
 struct mac_acl_entry* os_realloc_array (struct mac_acl_entry*,int,int) ;
 int wpa_printf (int ,char*) ;

int hostapd_add_acl_maclist(struct mac_acl_entry **acl, int *num,
       int vlan_id, const u8 *addr)
{
 struct mac_acl_entry *newacl;

 newacl = os_realloc_array(*acl, *num + 1, sizeof(**acl));
 if (!newacl) {
  wpa_printf(MSG_ERROR, "MAC list reallocation failed");
  return -1;
 }

 *acl = newacl;
 os_memcpy((*acl)[*num].addr, addr, ETH_ALEN);
 os_memset(&(*acl)[*num].vlan_id, 0, sizeof((*acl)[*num].vlan_id));
 (*acl)[*num].vlan_id.untagged = vlan_id;
 (*acl)[*num].vlan_id.notempty = !!vlan_id;
 (*num)++;

 return 0;
}
