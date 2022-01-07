
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int ip6r0_segleft; int* ip6r0_slmap; } ;
struct ip6_rthdr {int ip6r_type; } ;
struct cmsghdr {int dummy; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 unsigned int IPV6_RTHDR_LOOSE ;
 unsigned int IPV6_RTHDR_STRICT ;


int
inet6_rthdr_lasthop(struct cmsghdr *cmsg, unsigned int flags)
{
 struct ip6_rthdr *rthdr;

 rthdr = (struct ip6_rthdr *)CMSG_DATA(cmsg);

 switch (rthdr->ip6r_type) {
 case 128:
 {
  struct ip6_rthdr0 *rt0 = (struct ip6_rthdr0 *)rthdr;




  if (rt0->ip6r0_segleft > 23)
   return (-1);
  if (flags != IPV6_RTHDR_LOOSE)
   return (-1);

  break;
 }
 default:
  return (-1);
 }

 return (0);
}
