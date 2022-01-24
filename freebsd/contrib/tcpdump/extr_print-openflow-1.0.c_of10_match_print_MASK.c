#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ ETHERTYPE_ARP ; 
 scalar_t__ ETHERTYPE_IP ; 
 int ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  ofpp_str ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static const u_char *
FUNC9(netdissect_options *ndo,
                 const char *pfx, const u_char *cp, const u_char *ep)
{
	uint32_t wildcards;
	uint16_t dl_type;
	uint8_t nw_proto;
	u_char nw_bits;
	const char *field_name;

	/* wildcards */
	FUNC3(*cp, 4);
	wildcards = FUNC1(cp);
	if (wildcards & OFPFW_U)
		FUNC2((ndo, "%swildcards 0x%08x (bogus)", pfx, wildcards));
	cp += 4;
	/* in_port */
	FUNC3(*cp, 2);
	if (! (wildcards & OFPFW_IN_PORT))
		FUNC2((ndo, "%smatch in_port %s", pfx, FUNC7(ofpp_str, "%u", FUNC0(cp))));
	cp += 2;
	/* dl_src */
	FUNC3(*cp, ETHER_ADDR_LEN);
	if (! (wildcards & OFPFW_DL_SRC))
		FUNC2((ndo, "%smatch dl_src %s", pfx, FUNC4(ndo, cp)));
	cp += ETHER_ADDR_LEN;
	/* dl_dst */
	FUNC3(*cp, ETHER_ADDR_LEN);
	if (! (wildcards & OFPFW_DL_DST))
		FUNC2((ndo, "%smatch dl_dst %s", pfx, FUNC4(ndo, cp)));
	cp += ETHER_ADDR_LEN;
	/* dl_vlan */
	FUNC3(*cp, 2);
	if (! (wildcards & OFPFW_DL_VLAN))
		FUNC2((ndo, "%smatch dl_vlan %s", pfx, FUNC8(FUNC0(cp))));
	cp += 2;
	/* dl_vlan_pcp */
	FUNC3(*cp, 1);
	if (! (wildcards & OFPFW_DL_VLAN_PCP))
		FUNC2((ndo, "%smatch dl_vlan_pcp %s", pfx, FUNC6(*cp)));
	cp += 1;
	/* pad1 */
	FUNC3(*cp, 1);
	cp += 1;
	/* dl_type */
	FUNC3(*cp, 2);
	dl_type = FUNC0(cp);
	cp += 2;
	if (! (wildcards & OFPFW_DL_TYPE))
		FUNC2((ndo, "%smatch dl_type 0x%04x", pfx, dl_type));
	/* nw_tos */
	FUNC3(*cp, 1);
	if (! (wildcards & OFPFW_NW_TOS))
		FUNC2((ndo, "%smatch nw_tos 0x%02x", pfx, *cp));
	cp += 1;
	/* nw_proto */
	FUNC3(*cp, 1);
	nw_proto = *cp;
	cp += 1;
	if (! (wildcards & OFPFW_NW_PROTO)) {
		field_name = ! (wildcards & OFPFW_DL_TYPE) && dl_type == ETHERTYPE_ARP
		  ? "arp_opcode" : "nw_proto";
		FUNC2((ndo, "%smatch %s %u", pfx, field_name, nw_proto));
	}
	/* pad2 */
	FUNC3(*cp, 2);
	cp += 2;
	/* nw_src */
	FUNC3(*cp, 4);
	nw_bits = (wildcards & OFPFW_NW_SRC_MASK) >> OFPFW_NW_SRC_SHIFT;
	if (nw_bits < 32)
		FUNC2((ndo, "%smatch nw_src %s/%u", pfx, FUNC5(ndo, cp), 32 - nw_bits));
	cp += 4;
	/* nw_dst */
	FUNC3(*cp, 4);
	nw_bits = (wildcards & OFPFW_NW_DST_MASK) >> OFPFW_NW_DST_SHIFT;
	if (nw_bits < 32)
		FUNC2((ndo, "%smatch nw_dst %s/%u", pfx, FUNC5(ndo, cp), 32 - nw_bits));
	cp += 4;
	/* tp_src */
	FUNC3(*cp, 2);
	if (! (wildcards & OFPFW_TP_SRC)) {
		field_name = ! (wildcards & OFPFW_DL_TYPE) && dl_type == ETHERTYPE_IP
		  && ! (wildcards & OFPFW_NW_PROTO) && nw_proto == IPPROTO_ICMP
		  ? "icmp_type" : "tp_src";
		FUNC2((ndo, "%smatch %s %u", pfx, field_name, FUNC0(cp)));
	}
	cp += 2;
	/* tp_dst */
	FUNC3(*cp, 2);
	if (! (wildcards & OFPFW_TP_DST)) {
		field_name = ! (wildcards & OFPFW_DL_TYPE) && dl_type == ETHERTYPE_IP
		  && ! (wildcards & OFPFW_NW_PROTO) && nw_proto == IPPROTO_ICMP
		  ? "icmp_code" : "tp_dst";
		FUNC2((ndo, "%smatch %s %u", pfx, field_name, FUNC0(cp)));
	}
	return cp + 2;

trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}