
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 scalar_t__ const ETHER_ADDR_LEN ;
 scalar_t__ EXTRACT_16BITS (int const*) ;
 scalar_t__ EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,scalar_t__ const) ;
 scalar_t__ OFPP_CONTROLLER ;
 scalar_t__ OF_ACTION_HEADER_LEN ;
 int etheraddr_string (int *,int const*) ;
 int ipaddr_string (int *,int const*) ;
 int istr ;
 int* of10_vendor_action_print (int *,int const*,int const*,scalar_t__) ;
 int ofpat_str ;
 int ofpp_str ;
 int ofpq_str ;
 int pcp_str (int const) ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;
 int vlan_str (scalar_t__) ;

__attribute__((used)) static const u_char *
of10_actions_print(netdissect_options *ndo,
                   const char *pfx, const u_char *cp, const u_char *ep,
                   u_int len)
{
 const u_char *cp0 = cp;
 const u_int len0 = len;
 uint16_t type, alen, output_port;

 while (len) {
  u_char alen_bogus = 0, skip = 0;

  if (len < OF_ACTION_HEADER_LEN)
   goto invalid;

  ND_TCHECK2(*cp, 2);
  type = EXTRACT_16BITS(cp);
  cp += 2;
  ND_PRINT((ndo, "%saction type %s", pfx, tok2str(ofpat_str, "invalid (0x%04x)", type)));

  ND_TCHECK2(*cp, 2);
  alen = EXTRACT_16BITS(cp);
  cp += 2;
  ND_PRINT((ndo, ", len %u", alen));

  if (alen < OF_ACTION_HEADER_LEN || alen > len)
   goto invalid;


  switch (type) {
  case 139:
  case 130:
  case 131:
  case 129:
  case 135:
  case 136:
  case 134:
  case 132:
  case 133:
   alen_bogus = alen != 8;
   break;
  case 137:
  case 138:
  case 140:
   alen_bogus = alen != 16;
   break;
  case 128:
   alen_bogus = alen % 8 != 0;
   break;
  default:
   skip = 1;
  }
  if (alen_bogus) {
   ND_PRINT((ndo, " (bogus)"));
   skip = 1;
  }
  if (skip) {
   ND_TCHECK2(*cp, alen - 4);
   cp += alen - 4;
   goto next_action;
  }

  switch (type) {
  case 139:

   ND_TCHECK2(*cp, 2);
   output_port = EXTRACT_16BITS(cp);
   cp += 2;
   ND_PRINT((ndo, ", port %s", tok2str(ofpp_str, "%u", output_port)));

   ND_TCHECK2(*cp, 2);
   if (output_port == OFPP_CONTROLLER)
    ND_PRINT((ndo, ", max_len %u", EXTRACT_16BITS(cp)));
   cp += 2;
   break;
  case 130:

   ND_TCHECK2(*cp, 2);
   ND_PRINT((ndo, ", vlan_vid %s", vlan_str(EXTRACT_16BITS(cp))));
   cp += 2;

   ND_TCHECK2(*cp, 2);
   cp += 2;
   break;
  case 131:

   ND_TCHECK2(*cp, 1);
   ND_PRINT((ndo, ", vlan_pcp %s", pcp_str(*cp)));
   cp += 1;

   ND_TCHECK2(*cp, 3);
   cp += 3;
   break;
  case 137:
  case 138:

   ND_TCHECK2(*cp, ETHER_ADDR_LEN);
   ND_PRINT((ndo, ", dl_addr %s", etheraddr_string(ndo, cp)));
   cp += ETHER_ADDR_LEN;

   ND_TCHECK2(*cp, 6);
   cp += 6;
   break;
  case 135:
  case 136:

   ND_TCHECK2(*cp, 4);
   ND_PRINT((ndo, ", nw_addr %s", ipaddr_string(ndo, cp)));
   cp += 4;
   break;
  case 134:

   ND_TCHECK2(*cp, 1);
   ND_PRINT((ndo, ", nw_tos 0x%02x", *cp));
   cp += 1;

   ND_TCHECK2(*cp, 3);
   cp += 3;
   break;
  case 132:
  case 133:

   ND_TCHECK2(*cp, 2);
   ND_PRINT((ndo, ", tp_port %u", EXTRACT_16BITS(cp)));
   cp += 2;

   ND_TCHECK2(*cp, 2);
   cp += 2;
   break;
  case 140:

   ND_TCHECK2(*cp, 2);
   ND_PRINT((ndo, ", port %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
   cp += 2;

   ND_TCHECK2(*cp, 6);
   cp += 6;

   ND_TCHECK2(*cp, 4);
   ND_PRINT((ndo, ", queue_id %s", tok2str(ofpq_str, "%u", EXTRACT_32BITS(cp))));
   cp += 4;
   break;
  case 128:
   if (ep == (cp = of10_vendor_action_print(ndo, cp, ep, alen - 4)))
    return ep;
   break;
  case 129:

   ND_TCHECK2(*cp, 4);
   cp += 4;
   break;
  }
next_action:
  len -= alen;
 }
 return cp;

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp0, len0);
 return cp0 + len0;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
