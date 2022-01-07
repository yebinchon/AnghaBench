
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int ip6r0_len; } ;
struct ip6_rthdr {int ip6r_type; } ;
struct in6_addr {int dummy; } ;
struct cmsghdr {int dummy; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr const*) ;


int
inet6_rthdr_segments(const struct cmsghdr *cmsg)
{
 struct ip6_rthdr *rthdr;

 rthdr = (struct ip6_rthdr *)CMSG_DATA(cmsg);

 switch (rthdr->ip6r_type) {
 case 128:
 {
  struct ip6_rthdr0 *rt0 = (struct ip6_rthdr0 *)rthdr;

  if (rt0->ip6r0_len % 2 || 46 < rt0->ip6r0_len)
   return (-1);

  return (rt0->ip6r0_len * 8) / sizeof(struct in6_addr);
 }

 default:
  return (-1);
 }
}
