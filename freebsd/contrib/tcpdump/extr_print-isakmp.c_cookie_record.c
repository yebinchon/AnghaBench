
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct ip6_hdr {int ip6_dst; int ip6_src; } ;
struct ip {int ip_dst; int ip_src; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int cookie_t ;
struct TYPE_5__ {int in6; int in4; } ;
struct TYPE_4__ {int in6; int in4; } ;
struct TYPE_6__ {int version; int initiator; TYPE_2__ raddr; TYPE_1__ iaddr; } ;


 int IP_V (struct ip const*) ;
 int MAXINITIATORS ;
 int UNALIGNED_MEMCPY (int *,int *,int) ;
 int cookie_find (int *) ;
 TYPE_3__* cookiecache ;
 size_t ninitiator ;

__attribute__((used)) static void
cookie_record(cookie_t *in, const u_char *bp2)
{
 int i;
 const struct ip *ip;
 const struct ip6_hdr *ip6;

 i = cookie_find(in);
 if (0 <= i) {
  ninitiator = (i + 1) % MAXINITIATORS;
  return;
 }

 ip = (const struct ip *)bp2;
 switch (IP_V(ip)) {
 case 4:
  cookiecache[ninitiator].version = 4;
  UNALIGNED_MEMCPY(&cookiecache[ninitiator].iaddr.in4, &ip->ip_src, sizeof(struct in_addr));
  UNALIGNED_MEMCPY(&cookiecache[ninitiator].raddr.in4, &ip->ip_dst, sizeof(struct in_addr));
  break;
 case 6:
  ip6 = (const struct ip6_hdr *)bp2;
  cookiecache[ninitiator].version = 6;
  UNALIGNED_MEMCPY(&cookiecache[ninitiator].iaddr.in6, &ip6->ip6_src, sizeof(struct in6_addr));
  UNALIGNED_MEMCPY(&cookiecache[ninitiator].raddr.in6, &ip6->ip6_dst, sizeof(struct in6_addr));
  break;
 default:
  return;
 }
 UNALIGNED_MEMCPY(&cookiecache[ninitiator].initiator, in, sizeof(*in));
 ninitiator = (ninitiator + 1) % MAXINITIATORS;
}
