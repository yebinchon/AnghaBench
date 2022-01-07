
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_TCHECK (int const) ;
 int NFSX_V3FATTR ;
 int const* parsefattr (int *,int const*,int,int) ;

__attribute__((used)) static const uint32_t *
parse_post_op_attr(netdissect_options *ndo,
                   const uint32_t *dp, int verbose)
{
 ND_TCHECK(dp[0]);
 if (!EXTRACT_32BITS(&dp[0]))
  return (dp + 1);
 dp++;
 if (verbose) {
  return parsefattr(ndo, dp, verbose, 1);
 } else
  return (dp + (NFSX_V3FATTR / sizeof (uint32_t)));
trunc:
 return (((void*)0));
}
