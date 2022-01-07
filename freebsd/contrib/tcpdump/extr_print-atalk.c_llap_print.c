
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct atShortDDP {int srcSkt; int type; int dstSkt; } ;
struct atDDP {int srcSkt; int srcNode; int type; int dstSkt; int dstNode; int dstNet; int srcNet; } ;
struct LAP {int type; int dst; int src; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;
 int ataddr_string (int *,int ,int ) ;
 int ddpSSize ;
 int ddpSize ;
 int ddp_print (int *,int const*,int,int ,int ,int ,int ) ;
 int ddpskt_string (int *,int ) ;
 int klap_print (int const*,int) ;




u_int
llap_print(netdissect_options *ndo,
           register const u_char *bp, u_int length)
{
 register const struct LAP *lp;
 register const struct atDDP *dp;
 register const struct atShortDDP *sdp;
 u_short snet;
 u_int hdrlen;

 if (length < sizeof(*lp)) {
  ND_PRINT((ndo, " [|llap %u]", length));
  return (length);
 }
 if (!ND_TTEST2(*bp, sizeof(*lp))) {
  ND_PRINT((ndo, " [|llap]"));
  return (0);
 }
 lp = (const struct LAP *)bp;
 bp += sizeof(*lp);
 length -= sizeof(*lp);
 hdrlen = sizeof(*lp);
 switch (lp->type) {

 case 128:
  if (length < ddpSSize) {
   ND_PRINT((ndo, " [|sddp %u]", length));
   return (length);
  }
  if (!ND_TTEST2(*bp, ddpSSize)) {
   ND_PRINT((ndo, " [|sddp]"));
   return (0);
  }
  sdp = (const struct atShortDDP *)bp;
  ND_PRINT((ndo, "%s.%s",
      ataddr_string(ndo, 0, lp->src), ddpskt_string(ndo, sdp->srcSkt)));
  ND_PRINT((ndo, " > %s.%s:",
      ataddr_string(ndo, 0, lp->dst), ddpskt_string(ndo, sdp->dstSkt)));
  bp += ddpSSize;
  length -= ddpSSize;
  hdrlen += ddpSSize;
  ddp_print(ndo, bp, length, sdp->type, 0, lp->src, sdp->srcSkt);
  break;

 case 130:
  if (length < ddpSize) {
   ND_PRINT((ndo, " [|ddp %u]", length));
   return (length);
  }
  if (!ND_TTEST2(*bp, ddpSize)) {
   ND_PRINT((ndo, " [|ddp]"));
   return (0);
  }
  dp = (const struct atDDP *)bp;
  snet = EXTRACT_16BITS(&dp->srcNet);
  ND_PRINT((ndo, "%s.%s", ataddr_string(ndo, snet, dp->srcNode),
      ddpskt_string(ndo, dp->srcSkt)));
  ND_PRINT((ndo, " > %s.%s:",
      ataddr_string(ndo, EXTRACT_16BITS(&dp->dstNet), dp->dstNode),
      ddpskt_string(ndo, dp->dstSkt)));
  bp += ddpSize;
  length -= ddpSize;
  hdrlen += ddpSize;
  ddp_print(ndo, bp, length, dp->type, snet, dp->srcNode, dp->srcSkt);
  break;







 default:
  ND_PRINT((ndo, "%d > %d at-lap#%d %u",
      lp->src, lp->dst, lp->type, length));
  break;
 }
 return (hdrlen);
}
