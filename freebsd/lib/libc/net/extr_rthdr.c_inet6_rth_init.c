
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int ip6r0_len; int ip6r0_type; int ip6r0_reserved; int ip6r0_segleft; } ;
struct ip6_rthdr {int dummy; } ;
typedef int socklen_t ;



 int inet6_rth_space (int const,int) ;
 int memset (void*,int ,int ) ;

void *
inet6_rth_init(void *bp, socklen_t bp_len, int type, int segments)
{
 struct ip6_rthdr *rth = (struct ip6_rthdr *)bp;
 struct ip6_rthdr0 *rth0;

 switch (type) {
 case 128:

  if (bp_len < inet6_rth_space(128, segments))
   return (((void*)0));

  if ((segments < 0) || (segments > 127))
   return (((void*)0));

  memset(bp, 0, bp_len);
  rth0 = (struct ip6_rthdr0 *)rth;
  rth0->ip6r0_len = segments * 2;
  rth0->ip6r0_type = 128;
  rth0->ip6r0_segleft = 0;
  rth0->ip6r0_reserved = 0;
  break;
 default:
  return (((void*)0));
 }

 return (bp);
}
