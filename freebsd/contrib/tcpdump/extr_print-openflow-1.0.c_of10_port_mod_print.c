
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ETHER_ADDR_LEN ;
 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int OFPPC_U ;
 int OFPPF_U ;
 int etheraddr_string (int *,int const*) ;
 int of10_bitmap_print (int *,int ,int ,int ) ;
 int ofpp_str ;
 int ofppc_bm ;
 int ofppf_bm ;
 int tok2str (int ,char*,int ) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_port_mod_print(netdissect_options *ndo,
                    const u_char *cp, const u_char *ep)
{

 ND_TCHECK2(*cp, 2);
 ND_PRINT((ndo, "\n\t port_no %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
 cp += 2;

 ND_TCHECK2(*cp, ETHER_ADDR_LEN);
 ND_PRINT((ndo, ", hw_addr %s", etheraddr_string(ndo, cp)));
 cp += ETHER_ADDR_LEN;

 ND_TCHECK2(*cp, 4);
 ND_PRINT((ndo, "\n\t config 0x%08x", EXTRACT_32BITS(cp)));
 of10_bitmap_print(ndo, ofppc_bm, EXTRACT_32BITS(cp), OFPPC_U);
 cp += 4;

 ND_TCHECK2(*cp, 4);
 ND_PRINT((ndo, "\n\t mask 0x%08x", EXTRACT_32BITS(cp)));
 of10_bitmap_print(ndo, ofppc_bm, EXTRACT_32BITS(cp), OFPPC_U);
 cp += 4;

 ND_TCHECK2(*cp, 4);
 ND_PRINT((ndo, "\n\t advertise 0x%08x", EXTRACT_32BITS(cp)));
 of10_bitmap_print(ndo, ofppf_bm, EXTRACT_32BITS(cp), OFPPF_U);
 cp += 4;

 ND_TCHECK2(*cp, 4);
 return cp + 4;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
