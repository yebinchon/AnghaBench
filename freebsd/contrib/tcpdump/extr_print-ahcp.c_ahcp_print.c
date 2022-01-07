
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int const AHCP1_HEADER_FIX_LEN ;
 scalar_t__ const AHCP_MAGIC_NUMBER ;

 int EXTRACT_32BITS (scalar_t__ const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (scalar_t__ const,int) ;
 int ahcp1_body_print (TYPE_1__*,scalar_t__ const*,scalar_t__ const*) ;
 int istr ;
 int linkaddr_string (TYPE_1__*,scalar_t__ const*,int ,int) ;
 int tstr ;

void
ahcp_print(netdissect_options *ndo, const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;
 uint8_t version;

 ND_PRINT((ndo, "AHCP"));
 if (len < 2)
  goto invalid;

 ND_TCHECK2(*cp, 1);
 if (*cp != AHCP_MAGIC_NUMBER)
  goto invalid;
 cp += 1;

 ND_TCHECK2(*cp, 1);
 version = *cp;
 cp += 1;
 switch (version) {
  case 128: {
   ND_PRINT((ndo, " Version 1"));
   if (len < AHCP1_HEADER_FIX_LEN)
    goto invalid;
   if (!ndo->ndo_vflag) {
    ND_TCHECK2(*cp, AHCP1_HEADER_FIX_LEN - 2);
    cp += AHCP1_HEADER_FIX_LEN - 2;
   } else {

    ND_TCHECK2(*cp, 1);
    ND_PRINT((ndo, "\n\tHopcount %u", *cp));
    cp += 1;

    ND_TCHECK2(*cp, 1);
    ND_PRINT((ndo, ", Original Hopcount %u", *cp));
    cp += 1;

    ND_TCHECK2(*cp, 4);
    ND_PRINT((ndo, ", Nonce 0x%08x", EXTRACT_32BITS(cp)));
    cp += 4;

    ND_TCHECK2(*cp, 8);
    ND_PRINT((ndo, ", Source Id %s", linkaddr_string(ndo, cp, 0, 8)));
    cp += 8;

    ND_TCHECK2(*cp, 8);
    ND_PRINT((ndo, ", Destination Id %s", linkaddr_string(ndo, cp, 0, 8)));
    cp += 8;
   }

   ahcp1_body_print(ndo, cp, ep);
   break;
  }
  default:
   ND_PRINT((ndo, " Version %u (unknown)", version));
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
