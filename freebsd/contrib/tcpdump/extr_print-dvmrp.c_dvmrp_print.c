
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_11__ {int ndo_vflag; scalar_t__ ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int print_graft (TYPE_1__*,int const*) ;
 int print_graft_ack (TYPE_1__*,int const*) ;
 int print_neighbors (TYPE_1__*,int const*,int const*,int) ;
 int print_neighbors2 (TYPE_1__*,int const*,int const*,int) ;
 int print_probe (TYPE_1__*,int const*,int const*,int) ;
 int print_prune (TYPE_1__*,int const*) ;
 int print_report (TYPE_1__*,int const*,int const*,int) ;
 int target_level ;

void
dvmrp_print(netdissect_options *ndo,
            register const u_char *bp, register u_int len)
{
 register const u_char *ep;
 register u_char type;

 ep = (const u_char *)ndo->ndo_snapend;
 if (bp >= ep)
  return;

 ND_TCHECK(bp[1]);
 type = bp[1];


 bp += 8;
 len -= 8;

 switch (type) {

 case 130:
  ND_PRINT((ndo, " Probe"));
  if (ndo->ndo_vflag) {
   if (print_probe(ndo, bp, ep, len) < 0)
    goto trunc;
  }
  break;

 case 128:
  ND_PRINT((ndo, " Report"));
  if (ndo->ndo_vflag > 1) {
   if (print_report(ndo, bp, ep, len) < 0)
    goto trunc;
  }
  break;

 case 136:
  ND_PRINT((ndo, " Ask-neighbors(old)"));
  break;

 case 132:
  ND_PRINT((ndo, " Neighbors(old)"));
  if (print_neighbors(ndo, bp, ep, len) < 0)
   goto trunc;
  break;

 case 135:
  ND_PRINT((ndo, " Ask-neighbors2"));
  break;

 case 131:
  ND_PRINT((ndo, " Neighbors2"));




  bp -= 4;
  ND_TCHECK2(bp[0], 4);
  target_level = (bp[0] << 24) | (bp[1] << 16) |
      (bp[2] << 8) | bp[3];
  bp += 4;
  if (print_neighbors2(ndo, bp, ep, len) < 0)
   goto trunc;
  break;

 case 129:
  ND_PRINT((ndo, " Prune"));
  if (print_prune(ndo, bp) < 0)
   goto trunc;
  break;

 case 134:
  ND_PRINT((ndo, " Graft"));
  if (print_graft(ndo, bp) < 0)
   goto trunc;
  break;

 case 133:
  ND_PRINT((ndo, " Graft-ACK"));
  if (print_graft_ack(ndo, bp) < 0)
   goto trunc;
  break;

 default:
  ND_PRINT((ndo, " [type %d]", type));
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "[|dvmrp]"));
 return;
}
