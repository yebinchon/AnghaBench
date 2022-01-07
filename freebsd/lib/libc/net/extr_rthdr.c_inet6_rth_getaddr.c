
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int ip6r0_len; int ip6r0_segleft; } ;
struct ip6_rthdr {int ip6r_type; } ;
struct in6_addr {int dummy; } ;




struct in6_addr *
inet6_rth_getaddr(const void *bp, int idx)
{
 struct ip6_rthdr *rh = (struct ip6_rthdr *)bp;
 struct ip6_rthdr0 *rh0;
 int addrs;

 switch (rh->ip6r_type) {
 case 128:
   rh0 = (struct ip6_rthdr0 *)bp;





  if ((rh0->ip6r0_len % 2) != 0 ||
      (addrs = (rh0->ip6r0_len >> 1)) < rh0->ip6r0_segleft)
   return (((void*)0));

  if (idx < 0 || addrs <= idx)
   return (((void*)0));

  return (((struct in6_addr *)(rh0 + 1)) + idx);
 default:
  return (((void*)0));
  break;
 }
}
