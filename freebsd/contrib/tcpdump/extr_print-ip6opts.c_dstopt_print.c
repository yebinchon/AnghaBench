
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct ip6_dest {int ip6d_len; } ;
struct TYPE_5__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int) ;
 int ND_TCHECK2 (struct ip6_dest const,int) ;
 int ip6_opt_print (TYPE_1__*,int const*,int) ;

int
dstopt_print(netdissect_options *ndo, register const u_char *bp)
{
    const struct ip6_dest *dp = (const struct ip6_dest *)bp;
    int dstoptlen = 0;

    ND_TCHECK(dp->ip6d_len);
    dstoptlen = (int)((dp->ip6d_len + 1) << 3);
    ND_TCHECK2(*dp, dstoptlen);
    ND_PRINT((ndo, "DSTOPT "));
    if (ndo->ndo_vflag) {
 ip6_opt_print(ndo, (const u_char *)dp + sizeof(*dp),
     dstoptlen - sizeof(*dp));
    }

    return(dstoptlen);

  trunc:
    ND_PRINT((ndo, "[|DSTOPT]"));
    return(-1);
}
