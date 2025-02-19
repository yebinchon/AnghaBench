
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nl_addr {int dummy; } ;
typedef int mac_addr ;


 int AF_LLC ;
 int EINVAL ;
 int memcpy (int*,int*,int) ;
 struct nl_addr* nl_addr_build (int ,int*,int) ;
 scalar_t__ nl_addr_get_binary_addr (struct nl_addr*) ;

__attribute__((used)) static int get_link_local_mac_ipv6(struct nl_addr *dst,
       struct nl_addr **ll_addr)
{
 uint8_t mac_addr[6];

 memcpy(mac_addr + 3, (uint8_t *)nl_addr_get_binary_addr(dst) + 13, 3);
 memcpy(mac_addr, (uint8_t *)nl_addr_get_binary_addr(dst) + 8, 3);
 mac_addr[0] ^= 2;

 *ll_addr = nl_addr_build(AF_LLC, mac_addr, sizeof(mac_addr));
 return *ll_addr == ((void*)0) ? -EINVAL : 0;
}
