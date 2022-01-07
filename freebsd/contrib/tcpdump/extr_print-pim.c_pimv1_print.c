
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct in_addr {int dummy; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TTEST (int const) ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int pimv1_join_prune_print (TYPE_1__*,int const*,int ) ;
 int pimv1_type_str ;
 int tok2str (int ,char*,int) ;
 int unsigned_relts_print (TYPE_1__*,int ) ;

void
pimv1_print(netdissect_options *ndo,
            register const u_char *bp, register u_int len)
{
 register u_char type;

 ND_TCHECK(bp[1]);
 type = bp[1];

 ND_PRINT((ndo, " %s", tok2str(pimv1_type_str, "[type %u]", type)));
 switch (type) {
 case 131:
  if (ND_TTEST(bp[8])) {
   switch (bp[8] >> 4) {
   case 0:
    ND_PRINT((ndo, " Dense-mode"));
    break;
   case 1:
    ND_PRINT((ndo, " Sparse-mode"));
    break;
   case 2:
    ND_PRINT((ndo, " Sparse-Dense-mode"));
    break;
   default:
    ND_PRINT((ndo, " mode-%d", bp[8] >> 4));
    break;
   }
  }
  if (ndo->ndo_vflag) {
   ND_TCHECK2(bp[10],2);
   ND_PRINT((ndo, " (Hold-time "));
   unsigned_relts_print(ndo, EXTRACT_16BITS(&bp[10]));
   ND_PRINT((ndo, ")"));
  }
  break;

 case 130:
  ND_TCHECK2(bp[8], 20);
  ND_PRINT((ndo, " for %s > %s", ipaddr_string(ndo, &bp[20]),
      ipaddr_string(ndo, &bp[24])));
  break;
 case 129:
  ND_TCHECK2(bp[12], sizeof(struct in_addr));
  ND_PRINT((ndo, " for %s > %s", ipaddr_string(ndo, &bp[8]),
      ipaddr_string(ndo, &bp[12])));
  break;
 case 128:
  if (ndo->ndo_vflag) {
   ND_TCHECK2(bp[22], 2);
   ND_PRINT((ndo, " group %s", ipaddr_string(ndo, &bp[8])));
   if (EXTRACT_32BITS(&bp[12]) != 0xffffffff)
    ND_PRINT((ndo, "/%s", ipaddr_string(ndo, &bp[12])));
   ND_PRINT((ndo, " RP %s hold ", ipaddr_string(ndo, &bp[16])));
   unsigned_relts_print(ndo, EXTRACT_16BITS(&bp[22]));
  }
  break;
 case 135:
  ND_TCHECK2(bp[16], sizeof(struct in_addr));
  ND_PRINT((ndo, " for %s > %s", ipaddr_string(ndo, &bp[16]),
      ipaddr_string(ndo, &bp[8])));
  if (EXTRACT_32BITS(&bp[12]) != 0xffffffff)
   ND_PRINT((ndo, "/%s", ipaddr_string(ndo, &bp[12])));
  ND_TCHECK2(bp[24], 4);
  ND_PRINT((ndo, " %s pref %d metric %d",
      (bp[20] & 0x80) ? "RP-tree" : "SPT",
  EXTRACT_32BITS(&bp[20]) & 0x7fffffff,
  EXTRACT_32BITS(&bp[24])));
  break;
 case 132:
 case 134:
 case 133:
  if (ndo->ndo_vflag) {
   if (len < 8)
    goto trunc;
   pimv1_join_prune_print(ndo, &bp[8], len - 8);
  }
  break;
 }
 ND_TCHECK(bp[4]);
 if ((bp[4] >> 4) != 1)
  ND_PRINT((ndo, " [v%d]", bp[4] >> 4));
 return;

trunc:
 ND_PRINT((ndo, "[|pim]"));
 return;
}
