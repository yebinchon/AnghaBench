
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int const AOEV1_MAC_ARG_LEN ;
 int ETHER_ADDR_LEN ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int aoev1_dcmd_str ;
 int aoev1_mcmd_str ;
 int aoev1_merror_str ;
 int etheraddr_string (int *,int const*) ;
 int istr ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static void
aoev1_mac_print(netdissect_options *ndo,
                const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;
 uint8_t dircount, i;

 if (len < AOEV1_MAC_ARG_LEN)
  goto invalid;

 ND_TCHECK2(*cp, 1);
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, "\n\tMCmd: %s", tok2str(aoev1_mcmd_str, "Unknown (0x%02x)", *cp)));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", MError: %s", tok2str(aoev1_merror_str, "Unknown (0x%02x)", *cp)));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 dircount = *cp;
 cp += 1;
 ND_PRINT((ndo, ", Dir Count: %u", dircount));
 if (AOEV1_MAC_ARG_LEN + dircount * 8 > len)
  goto invalid;

 for (i = 0; i < dircount; i++) {

  ND_TCHECK2(*cp, 1);
  cp += 1;

  ND_TCHECK2(*cp, 1);
  ND_PRINT((ndo, "\n\t DCmd: %s", tok2str(aoev1_dcmd_str, "Unknown (0x%02x)", *cp)));
  cp += 1;

  ND_TCHECK2(*cp, ETHER_ADDR_LEN);
  ND_PRINT((ndo, ", Ethernet Address: %s", etheraddr_string(ndo, cp)));
  cp += ETHER_ADDR_LEN;
 }
 return;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
