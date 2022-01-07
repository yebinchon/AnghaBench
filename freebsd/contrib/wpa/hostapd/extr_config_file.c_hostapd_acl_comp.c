
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_acl_entry {int addr; } ;
typedef int macaddr ;


 int os_memcmp (int ,int ,int) ;

int hostapd_acl_comp(const void *a, const void *b)
{
 const struct mac_acl_entry *aa = a;
 const struct mac_acl_entry *bb = b;
 return os_memcmp(aa->addr, bb->addr, sizeof(macaddr));
}
