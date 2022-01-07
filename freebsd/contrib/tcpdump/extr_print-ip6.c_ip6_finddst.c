
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct ip6_rthdr0 {struct in6_addr* ip6r0_addr; } ;
struct ip6_rthdr {int ip6r_len; int ip6r_type; } ;
struct in6_addr {int dummy; } ;
struct ip6_hdr {int ip6_nxt; struct in6_addr ip6_dst; } ;
struct ip6_frag {int dummy; } ;
struct TYPE_3__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;
 int ND_TCHECK (struct ip6_rthdr const) ;
 int ND_TCHECK2 (int const,int) ;
 int UNALIGNED_MEMCPY (struct in6_addr*,struct in6_addr const*,int) ;

__attribute__((used)) static void
ip6_finddst(netdissect_options *ndo, struct in6_addr *dst,
            const struct ip6_hdr *ip6)
{
 const u_char *cp;
 int advance;
 u_int nh;
 const struct in6_addr *dst_addr;
 const struct ip6_rthdr *dp;
 const struct ip6_rthdr0 *dp0;
 const struct in6_addr *addr;
 int i, len;

 cp = (const u_char *)ip6;
 advance = sizeof(struct ip6_hdr);
 nh = ip6->ip6_nxt;
 dst_addr = &ip6->ip6_dst;

 while (cp < ndo->ndo_snapend) {
  cp += advance;

  switch (nh) {

  case 134:
  case 137:
  case 131:
  case 132:






   ND_TCHECK2(*cp, 2);
   advance = (int)((*(cp + 1) + 1) << 3);
   nh = *cp;
   break;

  case 135:





   ND_TCHECK2(*cp, 1);
   advance = sizeof(struct ip6_frag);
   nh = *cp;
   break;

  case 130:



   dp = (const struct ip6_rthdr *)cp;
   ND_TCHECK(*dp);
   len = dp->ip6r_len;
   switch (dp->ip6r_type) {

   case 129:
   case 128:
    dp0 = (const struct ip6_rthdr0 *)dp;
    if (len % 2 == 1)
     goto trunc;
    len >>= 1;
    addr = &dp0->ip6r0_addr[0];
    for (i = 0; i < len; i++) {
     if ((const u_char *)(addr + 1) > ndo->ndo_snapend)
      goto trunc;

     dst_addr = addr;
     addr++;
    }
    break;

   default:
    break;
   }




   goto done;

  case 138:
  case 136:
  case 133:
  default:
   goto done;
  }
 }

done:
trunc:
 UNALIGNED_MEMCPY(dst, dst_addr, sizeof(struct in6_addr));
}
