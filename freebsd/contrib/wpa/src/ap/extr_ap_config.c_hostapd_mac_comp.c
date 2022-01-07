
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macaddr ;


 int os_memcmp (void const*,void const*,int) ;

int hostapd_mac_comp(const void *a, const void *b)
{
 return os_memcmp(a, b, sizeof(macaddr));
}
