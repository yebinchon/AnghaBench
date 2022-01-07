
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int cnfp_v1_print (int *,int const*) ;
 int cnfp_v5_print (int *,int const*) ;
 int cnfp_v6_print (int *,int const*) ;

void
cnfp_print(netdissect_options *ndo, const u_char *cp)
{
 int ver;




 ND_TCHECK2(*cp, 2);
 ver = EXTRACT_16BITS(cp);
 switch (ver) {

 case 1:
  cnfp_v1_print(ndo, cp);
  break;

 case 5:
  cnfp_v5_print(ndo, cp);
  break;

 case 6:
  cnfp_v6_print(ndo, cp);
  break;

 default:
  ND_PRINT((ndo, "NetFlow v%x", ver));
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "[|cnfp]"));
 return;
}
