
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int nfserr ;
 int status2str ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static const uint32_t *
parsestatus(netdissect_options *ndo,
            const uint32_t *dp, int *er)
{
 int errnum;

 ND_TCHECK(dp[0]);

 errnum = EXTRACT_32BITS(&dp[0]);
 if (er)
  *er = errnum;
 if (errnum != 0) {
  if (!ndo->ndo_qflag)
   ND_PRINT((ndo, " ERROR: %s",
       tok2str(status2str, "unk %d", errnum)));
  nfserr = 1;
 }
 return (dp + 1);
trunc:
 return ((void*)0);
}
