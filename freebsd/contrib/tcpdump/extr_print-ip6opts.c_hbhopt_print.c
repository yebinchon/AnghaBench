
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct ip6_hbh {int ip6h_len; } ;
struct TYPE_5__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int) ;
 int ND_TCHECK2 (struct ip6_hbh const,int) ;
 int ip6_opt_print (TYPE_1__*,int const*,int) ;

int
hbhopt_print(netdissect_options *ndo, register const u_char *bp)
{
    const struct ip6_hbh *dp = (const struct ip6_hbh *)bp;
    int hbhlen = 0;

    ND_TCHECK(dp->ip6h_len);
    hbhlen = (int)((dp->ip6h_len + 1) << 3);
    ND_TCHECK2(*dp, hbhlen);
    ND_PRINT((ndo, "HBH "));
    if (ndo->ndo_vflag)
 ip6_opt_print(ndo, (const u_char *)dp + sizeof(*dp), hbhlen - sizeof(*dp));

    return(hbhlen);

  trunc:
    ND_PRINT((ndo, "[|HBH]"));
    return(-1);
}
