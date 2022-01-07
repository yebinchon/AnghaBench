
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int ip6r0_len; int ip6r0_segleft; } ;
struct ip6_rthdr {int ip6r_type; } ;




int
inet6_rth_segments(const void *bp)
{
 struct ip6_rthdr *rh = (struct ip6_rthdr *)bp;
 struct ip6_rthdr0 *rh0;
 int addrs;

 switch (rh->ip6r_type) {
 case 128:
  rh0 = (struct ip6_rthdr0 *)bp;





  if ((rh0->ip6r0_len % 2) != 0 ||
      (addrs = (rh0->ip6r0_len >> 1)) < rh0->ip6r0_segleft)
   return (-1);

  return (addrs);
 default:
  return (-1);
 }
}
