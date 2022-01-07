
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct atDDP {int srcSkt; int srcNode; int type; int dstSkt; int dstNode; int dstNet; int srcNet; } ;
struct TYPE_7__ {int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST2 (int const,scalar_t__) ;
 int ataddr_string (TYPE_1__*,int ,int ) ;
 scalar_t__ ddpSize ;
 int ddp_print (TYPE_1__*,int const*,scalar_t__,int ,int ,int ,int ) ;
 int ddpskt_string (TYPE_1__*,int ) ;

void
atalk_print(netdissect_options *ndo,
            register const u_char *bp, u_int length)
{
 register const struct atDDP *dp;
 u_short snet;

        if(!ndo->ndo_eflag)
            ND_PRINT((ndo, "AT "));

 if (length < ddpSize) {
  ND_PRINT((ndo, " [|ddp %u]", length));
  return;
 }
 if (!ND_TTEST2(*bp, ddpSize)) {
  ND_PRINT((ndo, " [|ddp]"));
  return;
 }
 dp = (const struct atDDP *)bp;
 snet = EXTRACT_16BITS(&dp->srcNet);
 ND_PRINT((ndo, "%s.%s", ataddr_string(ndo, snet, dp->srcNode),
        ddpskt_string(ndo, dp->srcSkt)));
 ND_PRINT((ndo, " > %s.%s: ",
        ataddr_string(ndo, EXTRACT_16BITS(&dp->dstNet), dp->dstNode),
        ddpskt_string(ndo, dp->dstSkt)));
 bp += ddpSize;
 length -= ddpSize;
 ddp_print(ndo, bp, length, dp->type, snet, dp->srcNode, dp->srcSkt);
}
