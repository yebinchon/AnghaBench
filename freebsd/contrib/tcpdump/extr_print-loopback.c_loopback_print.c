
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_LE_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int istr ;
 int loopback_message_print (int *,int const*,int const) ;
 int tstr ;

void
loopback_print(netdissect_options *ndo, const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;
 uint16_t skipCount;

 ND_PRINT((ndo, "Loopback"));
 if (len < 2)
  goto invalid;

 ND_TCHECK2(*cp, 2);
 skipCount = EXTRACT_LE_16BITS(cp);
 cp += 2;
 ND_PRINT((ndo, ", skipCount %u", skipCount));
 if (skipCount % 8)
  ND_PRINT((ndo, " (bogus)"));
 if (skipCount > len - 2)
  goto invalid;
 loopback_message_print(ndo, cp + skipCount, len - 2 - skipCount);
 return;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
