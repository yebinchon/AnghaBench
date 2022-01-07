
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int const* parse_wcc_attr (int *,int const*) ;

__attribute__((used)) static const uint32_t *
parse_pre_op_attr(netdissect_options *ndo,
                  const uint32_t *dp, int verbose)
{
 ND_TCHECK(dp[0]);
 if (!EXTRACT_32BITS(&dp[0]))
  return (dp + 1);
 dp++;
 ND_TCHECK2(*dp, 24);
 if (verbose > 1) {
  return parse_wcc_attr(ndo, dp);
 } else {

  return (dp + 6);
 }
trunc:
 return (((void*)0));
}
