
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ip6_rthdr0 {int ip6r0_segleft; int* ip6r0_slmap; int ip6r0_len; } ;
struct ip6_rthdr {int ip6r_type; } ;
struct in6_addr {int dummy; } ;
struct cmsghdr {int cmsg_len; } ;
typedef int caddr_t ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int IPV6_RTHDR_LOOSE ;
 int IPV6_RTHDR_STRICT ;

 int bcopy (struct in6_addr const*,int ,int) ;

int
inet6_rthdr_add(struct cmsghdr *cmsg, const struct in6_addr *addr, u_int flags)
{
 struct ip6_rthdr *rthdr;

 rthdr = (struct ip6_rthdr *)CMSG_DATA(cmsg);

 switch (rthdr->ip6r_type) {
 case 128:
 {
  struct ip6_rthdr0 *rt0 = (struct ip6_rthdr0 *)rthdr;
  if (flags != IPV6_RTHDR_LOOSE && flags != IPV6_RTHDR_STRICT)
   return (-1);
  if (rt0->ip6r0_segleft == 23)
   return (-1);
  if (flags != IPV6_RTHDR_LOOSE)
   return (-1);

  rt0->ip6r0_segleft++;
  bcopy(addr, (caddr_t)rt0 + ((rt0->ip6r0_len + 1) << 3),
      sizeof(struct in6_addr));
  rt0->ip6r0_len += sizeof(struct in6_addr) >> 3;
  cmsg->cmsg_len = CMSG_LEN((rt0->ip6r0_len + 1) << 3);
  break;
 }
 default:
  return (-1);
 }

 return (0);
}
