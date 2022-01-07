
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int cb_cred; } ;
struct sunrpc_msg {TYPE_1__ rm_call; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int ) ;

__attribute__((used)) static const uint32_t *
parsereq(netdissect_options *ndo,
         register const struct sunrpc_msg *rp, register u_int length)
{
 register const uint32_t *dp;
 register u_int len;




 dp = (const uint32_t *)&rp->rm_call.cb_cred;
 ND_TCHECK(dp[1]);
 len = EXTRACT_32BITS(&dp[1]);
 if (len < length) {
  dp += (len + (2 * sizeof(*dp) + 3)) / sizeof(*dp);
  ND_TCHECK(dp[1]);
  len = EXTRACT_32BITS(&dp[1]);
  if (len < length) {
   dp += (len + (2 * sizeof(*dp) + 3)) / sizeof(*dp);
   ND_TCHECK2(dp[0], 0);
   return (dp);
  }
 }
trunc:
 return (((void*)0));
}
