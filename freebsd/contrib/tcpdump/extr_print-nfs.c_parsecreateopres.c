
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int * parse_post_op_attr (TYPE_1__*,int const*,int) ;
 int * parse_wcc_data (TYPE_1__*,int const*,int) ;
 int * parsefh (TYPE_1__*,int const*,int) ;
 int * parsestatus (TYPE_1__*,int const*,int*) ;

__attribute__((used)) static const uint32_t *
parsecreateopres(netdissect_options *ndo,
                 const uint32_t *dp, int verbose)
{
 int er;

 if (!(dp = parsestatus(ndo, dp, &er)))
  return (0);
 if (er)
  dp = parse_wcc_data(ndo, dp, verbose);
 else {
  ND_TCHECK(dp[0]);
  if (!EXTRACT_32BITS(&dp[0]))
   return (dp + 1);
  dp++;
  if (!(dp = parsefh(ndo, dp, 1)))
   return (0);
  if (verbose) {
   if (!(dp = parse_post_op_attr(ndo, dp, verbose)))
    return (0);
   if (ndo->ndo_vflag > 1) {
    ND_PRINT((ndo, " dir attr:"));
    dp = parse_wcc_data(ndo, dp, verbose);
   }
  }
 }
 return (dp);
trunc:
 return (((void*)0));
}
