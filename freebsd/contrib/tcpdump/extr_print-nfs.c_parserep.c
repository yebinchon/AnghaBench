
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sunrpc_msg {int rm_reply; } ;
typedef int netdissect_options ;
typedef enum sunrpc_accept_stat { ____Placeholder_sunrpc_accept_stat } sunrpc_accept_stat ;
typedef int astat ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int SUNRPC_SUCCESS ;
 int nfserr ;
 int sunrpc_str ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static const uint32_t *
parserep(netdissect_options *ndo,
         register const struct sunrpc_msg *rp, register u_int length)
{
 register const uint32_t *dp;
 u_int len;
 enum sunrpc_accept_stat astat;
 dp = ((const uint32_t *)&rp->rm_reply) + 1;
 ND_TCHECK(dp[1]);
 len = EXTRACT_32BITS(&dp[1]);
 if (len >= length)
  return (((void*)0));



 dp += (len + (2*sizeof(uint32_t) + 3)) / sizeof(uint32_t);




 ND_TCHECK(dp[0]);
 astat = (enum sunrpc_accept_stat) EXTRACT_32BITS(dp);
 if (astat != SUNRPC_SUCCESS) {
  ND_PRINT((ndo, " %s", tok2str(sunrpc_str, "ar_stat %d", astat)));
  nfserr = 1;
  return (((void*)0));
 }

 ND_TCHECK2(*dp, sizeof(astat));
 return ((const uint32_t *) (sizeof(astat) + ((const char *)dp)));
trunc:
 return (0);
}
