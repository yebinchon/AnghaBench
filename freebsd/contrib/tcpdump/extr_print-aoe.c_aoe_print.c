
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;



 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int aoev1_print (int *,int const*,int const) ;
 int istr ;
 int tstr ;

void
aoe_print(netdissect_options *ndo,
          const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;
 uint8_t ver;

 ND_PRINT((ndo, "AoE length %u", len));

 if (len < 1)
  goto invalid;

 ND_TCHECK2(*cp, 1);
 ver = (*cp & 0xF0) >> 4;

 ND_PRINT((ndo, ", Ver %u", ver));

 switch (ver) {
  case 128:
   aoev1_print(ndo, cp, len);
   break;
 }
 return;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
