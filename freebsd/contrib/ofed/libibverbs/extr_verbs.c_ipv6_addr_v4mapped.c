
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {unsigned long* s6_addr32; } ;


 scalar_t__ IN6_IS_ADDR_V4MAPPED (struct in6_addr const*) ;
 unsigned long htobe32 (int) ;

__attribute__((used)) static inline int ipv6_addr_v4mapped(const struct in6_addr *a)
{
 return IN6_IS_ADDR_V4MAPPED(a) ||

  (a->s6_addr32[0] == htobe32(0xff0e0000) &&
  ((a->s6_addr32[1] |
   (a->s6_addr32[2] ^ htobe32(0x0000ffff))) == 0UL));
}
