
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ETHER_ADDR_LEN ;
 int EXTRACT_LE_16BITS (int const*) ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int const) ;
 int etheraddr_string (int *,int const*) ;
 int fcode_str ;
 int istr ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static void
loopback_message_print(netdissect_options *ndo, const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;
 uint16_t function;

 if (len < 2)
  goto invalid;

 ND_TCHECK2(*cp, 2);
 function = EXTRACT_LE_16BITS(cp);
 cp += 2;
 ND_PRINT((ndo, ", %s", tok2str(fcode_str, " invalid (%u)", function)));

 switch (function) {
  case 128:
   if (len < 4)
    goto invalid;

   ND_TCHECK2(*cp, 2);
   ND_PRINT((ndo, ", receipt number %u", EXTRACT_LE_16BITS(cp)));
   cp += 2;

   ND_PRINT((ndo, ", data (%u octets)", len - 4));
   ND_TCHECK2(*cp, len - 4);
   break;
  case 129:
   if (len < 8)
    goto invalid;

   ND_TCHECK2(*cp, ETHER_ADDR_LEN);
   ND_PRINT((ndo, ", forwarding address %s", etheraddr_string(ndo, cp)));
   cp += ETHER_ADDR_LEN;

   ND_PRINT((ndo, ", data (%u octets)", len - 8));
   ND_TCHECK2(*cp, len - 8);
   break;
  default:
   ND_TCHECK2(*cp, len - 2);
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
