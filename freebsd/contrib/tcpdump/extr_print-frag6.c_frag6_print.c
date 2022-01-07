
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct ip6_hdr {int ip6_plen; } ;
struct ip6_frag {int ip6f_offlg; int ip6f_ident; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int *) ;
 int IP6F_OFF_MASK ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct ip6_frag const) ;

int
frag6_print(netdissect_options *ndo, register const u_char *bp, register const u_char *bp2)
{
 register const struct ip6_frag *dp;
 register const struct ip6_hdr *ip6;

 dp = (const struct ip6_frag *)bp;
 ip6 = (const struct ip6_hdr *)bp2;

 ND_TCHECK(*dp);

 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, "frag (0x%08x:%d|%ld)",
         EXTRACT_32BITS(&dp->ip6f_ident),
         EXTRACT_16BITS(&dp->ip6f_offlg) & IP6F_OFF_MASK,
         sizeof(struct ip6_hdr) + EXTRACT_16BITS(&ip6->ip6_plen) -
          (long)(bp - bp2) - sizeof(struct ip6_frag)));
 } else {
  ND_PRINT((ndo, "frag (%d|%ld)",
         EXTRACT_16BITS(&dp->ip6f_offlg) & IP6F_OFF_MASK,
         sizeof(struct ip6_hdr) + EXTRACT_16BITS(&ip6->ip6_plen) -
          (long)(bp - bp2) - sizeof(struct ip6_frag)));
 }


 if ((EXTRACT_16BITS(&dp->ip6f_offlg) & IP6F_OFF_MASK) != 0)
  return -1;
 else
 {
  ND_PRINT((ndo, " "));
  return sizeof(struct ip6_frag);
 }
trunc:
 ND_PRINT((ndo, "[|frag]"));
 return -1;
}
