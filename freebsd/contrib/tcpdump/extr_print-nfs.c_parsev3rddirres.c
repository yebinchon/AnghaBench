
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int * parse_post_op_attr (TYPE_1__*,int const*,int) ;
 int * parsestatus (TYPE_1__*,int const*,int*) ;

__attribute__((used)) static const uint32_t *
parsev3rddirres(netdissect_options *ndo,
                const uint32_t *dp, int verbose)
{
 int er;

 if (!(dp = parsestatus(ndo, dp, &er)))
  return (0);
 if (ndo->ndo_vflag)
  ND_PRINT((ndo, " POST:"));
 if (!(dp = parse_post_op_attr(ndo, dp, verbose)))
  return (0);
 if (er)
  return dp;
 if (ndo->ndo_vflag) {
  ND_TCHECK(dp[1]);
  ND_PRINT((ndo, " verf %08x%08x", dp[0], dp[1]));
  dp += 2;
 }
 return dp;
trunc:
 return (((void*)0));
}
