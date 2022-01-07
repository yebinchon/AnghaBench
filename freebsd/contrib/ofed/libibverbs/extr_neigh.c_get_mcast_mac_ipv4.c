
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nl_addr {int dummy; } ;
typedef int mac_addr ;
typedef int __be32 ;


 int AF_LLC ;
 int EINVAL ;
 int be32toh (int ) ;
 struct nl_addr* nl_addr_build (int ,int*,int) ;
 scalar_t__ nl_addr_get_binary_addr (struct nl_addr*) ;

__attribute__((used)) static int get_mcast_mac_ipv4(struct nl_addr *dst, struct nl_addr **ll_addr)
{
 uint8_t mac_addr[6] = {0x01, 0x00, 0x5E};
 uint32_t addr = be32toh(*(__be32 *)nl_addr_get_binary_addr(dst));

 mac_addr[5] = addr & 0xFF;
 addr >>= 8;
 mac_addr[4] = addr & 0xFF;
 addr >>= 8;
 mac_addr[3] = addr & 0x7F;

 *ll_addr = nl_addr_build(AF_LLC, mac_addr, sizeof(mac_addr));

 return *ll_addr == ((void*)0) ? -EINVAL : 0;
}
