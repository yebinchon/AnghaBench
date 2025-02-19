
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u_char ;
typedef int netdissect_options ;


 scalar_t__ ETHERTYPE_ARP ;
 scalar_t__ ETHERTYPE_IP ;
 int ETHER_ADDR_LEN ;
 scalar_t__ EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 scalar_t__ IPPROTO_ICMP ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int OFPFW_DL_DST ;
 int OFPFW_DL_SRC ;
 int OFPFW_DL_TYPE ;
 int OFPFW_DL_VLAN ;
 int OFPFW_DL_VLAN_PCP ;
 int OFPFW_IN_PORT ;
 int OFPFW_NW_DST_MASK ;
 int OFPFW_NW_DST_SHIFT ;
 int OFPFW_NW_PROTO ;
 int OFPFW_NW_SRC_MASK ;
 int OFPFW_NW_SRC_SHIFT ;
 int OFPFW_NW_TOS ;
 int OFPFW_TP_DST ;
 int OFPFW_TP_SRC ;
 int OFPFW_U ;
 int etheraddr_string (int *,int const*) ;
 int ipaddr_string (int *,int const*) ;
 int ofpp_str ;
 int pcp_str (int const) ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;
 int vlan_str (scalar_t__) ;

__attribute__((used)) static const u_char *
of10_match_print(netdissect_options *ndo,
                 const char *pfx, const u_char *cp, const u_char *ep)
{
 uint32_t wildcards;
 uint16_t dl_type;
 uint8_t nw_proto;
 u_char nw_bits;
 const char *field_name;


 ND_TCHECK2(*cp, 4);
 wildcards = EXTRACT_32BITS(cp);
 if (wildcards & OFPFW_U)
  ND_PRINT((ndo, "%swildcards 0x%08x (bogus)", pfx, wildcards));
 cp += 4;

 ND_TCHECK2(*cp, 2);
 if (! (wildcards & OFPFW_IN_PORT))
  ND_PRINT((ndo, "%smatch in_port %s", pfx, tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
 cp += 2;

 ND_TCHECK2(*cp, ETHER_ADDR_LEN);
 if (! (wildcards & OFPFW_DL_SRC))
  ND_PRINT((ndo, "%smatch dl_src %s", pfx, etheraddr_string(ndo, cp)));
 cp += ETHER_ADDR_LEN;

 ND_TCHECK2(*cp, ETHER_ADDR_LEN);
 if (! (wildcards & OFPFW_DL_DST))
  ND_PRINT((ndo, "%smatch dl_dst %s", pfx, etheraddr_string(ndo, cp)));
 cp += ETHER_ADDR_LEN;

 ND_TCHECK2(*cp, 2);
 if (! (wildcards & OFPFW_DL_VLAN))
  ND_PRINT((ndo, "%smatch dl_vlan %s", pfx, vlan_str(EXTRACT_16BITS(cp))));
 cp += 2;

 ND_TCHECK2(*cp, 1);
 if (! (wildcards & OFPFW_DL_VLAN_PCP))
  ND_PRINT((ndo, "%smatch dl_vlan_pcp %s", pfx, pcp_str(*cp)));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 cp += 1;

 ND_TCHECK2(*cp, 2);
 dl_type = EXTRACT_16BITS(cp);
 cp += 2;
 if (! (wildcards & OFPFW_DL_TYPE))
  ND_PRINT((ndo, "%smatch dl_type 0x%04x", pfx, dl_type));

 ND_TCHECK2(*cp, 1);
 if (! (wildcards & OFPFW_NW_TOS))
  ND_PRINT((ndo, "%smatch nw_tos 0x%02x", pfx, *cp));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 nw_proto = *cp;
 cp += 1;
 if (! (wildcards & OFPFW_NW_PROTO)) {
  field_name = ! (wildcards & OFPFW_DL_TYPE) && dl_type == ETHERTYPE_ARP
    ? "arp_opcode" : "nw_proto";
  ND_PRINT((ndo, "%smatch %s %u", pfx, field_name, nw_proto));
 }

 ND_TCHECK2(*cp, 2);
 cp += 2;

 ND_TCHECK2(*cp, 4);
 nw_bits = (wildcards & OFPFW_NW_SRC_MASK) >> OFPFW_NW_SRC_SHIFT;
 if (nw_bits < 32)
  ND_PRINT((ndo, "%smatch nw_src %s/%u", pfx, ipaddr_string(ndo, cp), 32 - nw_bits));
 cp += 4;

 ND_TCHECK2(*cp, 4);
 nw_bits = (wildcards & OFPFW_NW_DST_MASK) >> OFPFW_NW_DST_SHIFT;
 if (nw_bits < 32)
  ND_PRINT((ndo, "%smatch nw_dst %s/%u", pfx, ipaddr_string(ndo, cp), 32 - nw_bits));
 cp += 4;

 ND_TCHECK2(*cp, 2);
 if (! (wildcards & OFPFW_TP_SRC)) {
  field_name = ! (wildcards & OFPFW_DL_TYPE) && dl_type == ETHERTYPE_IP
    && ! (wildcards & OFPFW_NW_PROTO) && nw_proto == IPPROTO_ICMP
    ? "icmp_type" : "tp_src";
  ND_PRINT((ndo, "%smatch %s %u", pfx, field_name, EXTRACT_16BITS(cp)));
 }
 cp += 2;

 ND_TCHECK2(*cp, 2);
 if (! (wildcards & OFPFW_TP_DST)) {
  field_name = ! (wildcards & OFPFW_DL_TYPE) && dl_type == ETHERTYPE_IP
    && ! (wildcards & OFPFW_NW_PROTO) && nw_proto == IPPROTO_ICMP
    ? "icmp_code" : "tp_dst";
  ND_PRINT((ndo, "%smatch %s %u", pfx, field_name, EXTRACT_16BITS(cp)));
 }
 return cp + 2;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
