
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ const ETHER_ADDR_LEN ;
 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,scalar_t__ const) ;
 int OFPPC_U ;
 int OFPPF_U ;
 int OFPPS_U ;
 int OFP_MAX_PORT_NAME_LEN ;
 scalar_t__ OF_PHY_PORT_LEN ;
 int etheraddr_string (TYPE_1__*,int const*) ;
 int fn_print (TYPE_1__*,int const*,int const*) ;
 int istr ;
 int of10_bitmap_print (TYPE_1__*,int ,int ,int ) ;
 int ofpp_str ;
 int ofppc_bm ;
 int ofppf_bm ;
 int ofpps_bm ;
 int tok2str (int ,char*,int ) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_phy_ports_print(netdissect_options *ndo,
                     const u_char *cp, const u_char *ep, u_int len)
{
 const u_char *cp0 = cp;
 const u_int len0 = len;

 while (len) {
  if (len < OF_PHY_PORT_LEN)
   goto invalid;

  ND_TCHECK2(*cp, 2);
  ND_PRINT((ndo, "\n\t  port_no %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
  cp += 2;

  ND_TCHECK2(*cp, ETHER_ADDR_LEN);
  ND_PRINT((ndo, ", hw_addr %s", etheraddr_string(ndo, cp)));
  cp += ETHER_ADDR_LEN;

  ND_TCHECK2(*cp, OFP_MAX_PORT_NAME_LEN);
  ND_PRINT((ndo, ", name '"));
  fn_print(ndo, cp, cp + OFP_MAX_PORT_NAME_LEN);
  ND_PRINT((ndo, "'"));
  cp += OFP_MAX_PORT_NAME_LEN;

  if (ndo->ndo_vflag < 2) {
   ND_TCHECK2(*cp, 24);
   cp += 24;
   goto next_port;
  }

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t   config 0x%08x", EXTRACT_32BITS(cp)));
  of10_bitmap_print(ndo, ofppc_bm, EXTRACT_32BITS(cp), OFPPC_U);
  cp += 4;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t   state 0x%08x", EXTRACT_32BITS(cp)));
  of10_bitmap_print(ndo, ofpps_bm, EXTRACT_32BITS(cp), OFPPS_U);
  cp += 4;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t   curr 0x%08x", EXTRACT_32BITS(cp)));
  of10_bitmap_print(ndo, ofppf_bm, EXTRACT_32BITS(cp), OFPPF_U);
  cp += 4;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t   advertised 0x%08x", EXTRACT_32BITS(cp)));
  of10_bitmap_print(ndo, ofppf_bm, EXTRACT_32BITS(cp), OFPPF_U);
  cp += 4;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t   supported 0x%08x", EXTRACT_32BITS(cp)));
  of10_bitmap_print(ndo, ofppf_bm, EXTRACT_32BITS(cp), OFPPF_U);
  cp += 4;

  ND_TCHECK2(*cp, 4);
  ND_PRINT((ndo, "\n\t   peer 0x%08x", EXTRACT_32BITS(cp)));
  of10_bitmap_print(ndo, ofppf_bm, EXTRACT_32BITS(cp), OFPPF_U);
  cp += 4;
next_port:
  len -= OF_PHY_PORT_LEN;
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
