
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
typedef int socklen_t ;


 int addr_is_ip6 (struct sockaddr_storage*,int ) ;
 scalar_t__ memcmp (int*,int const*,int) ;

int
addr_is_ip4mapped(struct sockaddr_storage* addr, socklen_t addrlen)
{

 const uint8_t map_prefix[16] =
  {0,0,0,0, 0,0,0,0, 0,0,0xff,0xff, 0,0,0,0};
 uint8_t* s;
 if(!addr_is_ip6(addr, addrlen))
  return 0;

 s = (uint8_t*)&((struct sockaddr_in6*)addr)->sin6_addr;
 return (memcmp(s, map_prefix, 12) == 0);
}
