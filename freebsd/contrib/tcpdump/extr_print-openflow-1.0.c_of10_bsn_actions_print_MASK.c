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
typedef  int uint32_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  BSN_ACTION_MIRROR 129 
#define  ETHERTYPE_8021Q 128 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const,int const) ; 
 int /*<<< orphan*/  bsn_action_subtype_str ; 
 int /*<<< orphan*/  bsn_mirror_copy_stage_str ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC5(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
	const u_char *cp0 = cp;
	uint32_t subtype, vlan_tag;

	if (len < 4)
		goto invalid;
	/* subtype */
	FUNC2(*cp, 4);
	subtype = FUNC0(cp);
	cp += 4;
	FUNC1((ndo, "\n\t  subtype %s", FUNC4(bsn_action_subtype_str, "unknown (0x%08x)", subtype)));
	switch (subtype) {
	case BSN_ACTION_MIRROR:
		/*
		 *  0                   1                   2                   3
		 *  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
		 * +---------------+---------------+---------------+---------------+
		 * |                            subtype                            |
		 * +---------------+---------------+---------------+---------------+
		 * |                           dest_port                           |
		 * +---------------+---------------+---------------+---------------+
		 * |                           vlan_tag                            |
		 * +---------------+---------------+---------------+---------------+
		 * |  copy_stage   |                      pad                      |
		 * +---------------+---------------+---------------+---------------+
		 *
		 */
		if (len != 16)
			goto invalid;
		/* dest_port */
		FUNC2(*cp, 4);
		FUNC1((ndo, ", dest_port %u", FUNC0(cp)));
		cp += 4;
		/* vlan_tag */
		FUNC2(*cp, 4);
		vlan_tag = FUNC0(cp);
		cp += 4;
		switch (vlan_tag >> 16) {
		case 0:
			FUNC1((ndo, ", vlan_tag none"));
			break;
		case ETHERTYPE_8021Q:
			FUNC1((ndo, ", vlan_tag 802.1Q (%s)", FUNC3(vlan_tag & 0xffff)));
			break;
		default:
			FUNC1((ndo, ", vlan_tag unknown (0x%04x)", vlan_tag >> 16));
		}
		/* copy_stage */
		FUNC2(*cp, 1);
		FUNC1((ndo, ", copy_stage %s", FUNC4(bsn_mirror_copy_stage_str, "unknown (%u)", *cp)));
		cp += 1;
		/* pad */
		FUNC2(*cp, 3);
		cp += 3;
		break;
	default:
		FUNC2(*cp, len - 4);
		cp += len - 4;
	}

	return cp;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp0, len);
	return cp0 + len;
trunc:
	FUNC1((ndo, "%s", tstr));
	return ep;
}