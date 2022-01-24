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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ const ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const,scalar_t__ const) ; 
#define  OFPAT_ENQUEUE 140 
#define  OFPAT_OUTPUT 139 
#define  OFPAT_SET_DL_DST 138 
#define  OFPAT_SET_DL_SRC 137 
#define  OFPAT_SET_NW_DST 136 
#define  OFPAT_SET_NW_SRC 135 
#define  OFPAT_SET_NW_TOS 134 
#define  OFPAT_SET_TP_DST 133 
#define  OFPAT_SET_TP_SRC 132 
#define  OFPAT_SET_VLAN_PCP 131 
#define  OFPAT_SET_VLAN_VID 130 
#define  OFPAT_STRIP_VLAN 129 
#define  OFPAT_VENDOR 128 
 scalar_t__ OFPP_CONTROLLER ; 
 scalar_t__ OF_ACTION_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  istr ; 
 int* FUNC6 (int /*<<< orphan*/ *,int const*,int const*,scalar_t__) ; 
 int /*<<< orphan*/  ofpat_str ; 
 int /*<<< orphan*/  ofpp_str ; 
 int /*<<< orphan*/  ofpq_str ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static const u_char *
FUNC10(netdissect_options *ndo,
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
		/* type */
		FUNC3(*cp, 2);
		type = FUNC0(cp);
		cp += 2;
		FUNC2((ndo, "%saction type %s", pfx, FUNC8(ofpat_str, "invalid (0x%04x)", type)));
		/* length */
		FUNC3(*cp, 2);
		alen = FUNC0(cp);
		cp += 2;
		FUNC2((ndo, ", len %u", alen));
		/* On action size underrun/overrun skip the rest of the action list. */
		if (alen < OF_ACTION_HEADER_LEN || alen > len)
			goto invalid;
		/* On action size inappropriate for the given type or invalid type just skip
		 * the current action, as the basic length constraint has been met. */
		switch (type) {
		case OFPAT_OUTPUT:
		case OFPAT_SET_VLAN_VID:
		case OFPAT_SET_VLAN_PCP:
		case OFPAT_STRIP_VLAN:
		case OFPAT_SET_NW_SRC:
		case OFPAT_SET_NW_DST:
		case OFPAT_SET_NW_TOS:
		case OFPAT_SET_TP_SRC:
		case OFPAT_SET_TP_DST:
			alen_bogus = alen != 8;
			break;
		case OFPAT_SET_DL_SRC:
		case OFPAT_SET_DL_DST:
		case OFPAT_ENQUEUE:
			alen_bogus = alen != 16;
			break;
		case OFPAT_VENDOR:
			alen_bogus = alen % 8 != 0; /* already >= 8 so far */
			break;
		default:
			skip = 1;
		}
		if (alen_bogus) {
			FUNC2((ndo, " (bogus)"));
			skip = 1;
		}
		if (skip) {
			FUNC3(*cp, alen - 4);
			cp += alen - 4;
			goto next_action;
		}
		/* OK to decode the rest of the action structure */
		switch (type) {
		case OFPAT_OUTPUT:
			/* port */
			FUNC3(*cp, 2);
			output_port = FUNC0(cp);
			cp += 2;
			FUNC2((ndo, ", port %s", FUNC8(ofpp_str, "%u", output_port)));
			/* max_len */
			FUNC3(*cp, 2);
			if (output_port == OFPP_CONTROLLER)
				FUNC2((ndo, ", max_len %u", FUNC0(cp)));
			cp += 2;
			break;
		case OFPAT_SET_VLAN_VID:
			/* vlan_vid */
			FUNC3(*cp, 2);
			FUNC2((ndo, ", vlan_vid %s", FUNC9(FUNC0(cp))));
			cp += 2;
			/* pad */
			FUNC3(*cp, 2);
			cp += 2;
			break;
		case OFPAT_SET_VLAN_PCP:
			/* vlan_pcp */
			FUNC3(*cp, 1);
			FUNC2((ndo, ", vlan_pcp %s", FUNC7(*cp)));
			cp += 1;
			/* pad */
			FUNC3(*cp, 3);
			cp += 3;
			break;
		case OFPAT_SET_DL_SRC:
		case OFPAT_SET_DL_DST:
			/* dl_addr */
			FUNC3(*cp, ETHER_ADDR_LEN);
			FUNC2((ndo, ", dl_addr %s", FUNC4(ndo, cp)));
			cp += ETHER_ADDR_LEN;
			/* pad */
			FUNC3(*cp, 6);
			cp += 6;
			break;
		case OFPAT_SET_NW_SRC:
		case OFPAT_SET_NW_DST:
			/* nw_addr */
			FUNC3(*cp, 4);
			FUNC2((ndo, ", nw_addr %s", FUNC5(ndo, cp)));
			cp += 4;
			break;
		case OFPAT_SET_NW_TOS:
			/* nw_tos */
			FUNC3(*cp, 1);
			FUNC2((ndo, ", nw_tos 0x%02x", *cp));
			cp += 1;
			/* pad */
			FUNC3(*cp, 3);
			cp += 3;
			break;
		case OFPAT_SET_TP_SRC:
		case OFPAT_SET_TP_DST:
			/* nw_tos */
			FUNC3(*cp, 2);
			FUNC2((ndo, ", tp_port %u", FUNC0(cp)));
			cp += 2;
			/* pad */
			FUNC3(*cp, 2);
			cp += 2;
			break;
		case OFPAT_ENQUEUE:
			/* port */
			FUNC3(*cp, 2);
			FUNC2((ndo, ", port %s", FUNC8(ofpp_str, "%u", FUNC0(cp))));
			cp += 2;
			/* pad */
			FUNC3(*cp, 6);
			cp += 6;
			/* queue_id */
			FUNC3(*cp, 4);
			FUNC2((ndo, ", queue_id %s", FUNC8(ofpq_str, "%u", FUNC1(cp))));
			cp += 4;
			break;
		case OFPAT_VENDOR:
			if (ep == (cp = FUNC6(ndo, cp, ep, alen - 4)))
				return ep; /* end of snapshot */
			break;
		case OFPAT_STRIP_VLAN:
			/* pad */
			FUNC3(*cp, 4);
			cp += 4;
			break;
		} /* switch */
next_action:
		len -= alen;
	} /* while */
	return cp;

invalid: /* skip the rest of actions */
	FUNC2((ndo, "%s", istr));
	FUNC3(*cp0, len0);
	return cp0 + len0;
trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}