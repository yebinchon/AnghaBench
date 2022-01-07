
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct ip6_hdr {int ip6_src; } ;
struct ip {int ip_src; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_5__ {int in6; int in4; } ;
struct TYPE_4__ {int in6; int in4; } ;
struct TYPE_6__ {int version; TYPE_2__ raddr; TYPE_1__ iaddr; } ;


 int IP_V (struct ip const*) ;
 int UNALIGNED_MEMCMP (int *,int *,int) ;
 TYPE_3__* cookiecache ;

__attribute__((used)) static int
cookie_sidecheck(int i, const u_char *bp2, int initiator)
{
 const struct ip *ip;
 const struct ip6_hdr *ip6;

 ip = (const struct ip *)bp2;
 switch (IP_V(ip)) {
 case 4:
  if (cookiecache[i].version != 4)
   return 0;
  if (initiator) {
   if (UNALIGNED_MEMCMP(&ip->ip_src, &cookiecache[i].iaddr.in4, sizeof(struct in_addr)) == 0)
    return 1;
  } else {
   if (UNALIGNED_MEMCMP(&ip->ip_src, &cookiecache[i].raddr.in4, sizeof(struct in_addr)) == 0)
    return 1;
  }
  break;
 case 6:
  if (cookiecache[i].version != 6)
   return 0;
  ip6 = (const struct ip6_hdr *)bp2;
  if (initiator) {
   if (UNALIGNED_MEMCMP(&ip6->ip6_src, &cookiecache[i].iaddr.in6, sizeof(struct in6_addr)) == 0)
    return 1;
  } else {
   if (UNALIGNED_MEMCMP(&ip6->ip6_src, &cookiecache[i].raddr.in6, sizeof(struct in6_addr)) == 0)
    return 1;
  }
  break;
 default:
  break;
 }

 return 0;
}
