
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int ip6r0_segleft; int ip6r0_len; } ;
struct ip6_rthdr {int ip6r_type; } ;
struct in6_addr {int dummy; } ;




int
inet6_rth_add(void *bp, const struct in6_addr *addr)
{
 struct ip6_rthdr *rth = (struct ip6_rthdr *)bp;
 struct ip6_rthdr0 *rth0;
 struct in6_addr *nextaddr;

 switch (rth->ip6r_type) {
 case 128:
  rth0 = (struct ip6_rthdr0 *)rth;

  if (rth0->ip6r0_segleft == (rth0->ip6r0_len / 2))
   return (-1);
  nextaddr = (struct in6_addr *)(rth0 + 1) + rth0->ip6r0_segleft;
  *nextaddr = *addr;
  rth0->ip6r0_segleft++;
  break;
 default:
  return (-1);
 }

 return (0);
}
