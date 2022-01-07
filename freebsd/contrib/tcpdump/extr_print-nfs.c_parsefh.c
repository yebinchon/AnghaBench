
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_TCHECK (int const) ;
 scalar_t__ ND_TTEST2 (int const,int) ;
 int NFSX_V2FH ;
 int nfs_printfh (int *,int const*,int) ;

__attribute__((used)) static const uint32_t *
parsefh(netdissect_options *ndo,
        register const uint32_t *dp, int v3)
{
 u_int len;

 if (v3) {
  ND_TCHECK(dp[0]);
  len = EXTRACT_32BITS(dp) / 4;
  dp++;
 } else
  len = NFSX_V2FH / 4;

 if (ND_TTEST2(*dp, len * sizeof(*dp))) {
  nfs_printfh(ndo, dp, len);
  return (dp + len);
 }
trunc:
 return (((void*)0));
}
