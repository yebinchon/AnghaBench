#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ const ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,scalar_t__ const) ; 
 int /*<<< orphan*/  OFPPC_U ; 
 int /*<<< orphan*/  OFPPF_U ; 
 int /*<<< orphan*/  OFPPS_U ; 
 int OFP_MAX_PORT_NAME_LEN ; 
 scalar_t__ OF_PHY_PORT_LEN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofpp_str ; 
 int /*<<< orphan*/  ofppc_bm ; 
 int /*<<< orphan*/  ofppf_bm ; 
 int /*<<< orphan*/  ofpps_bm ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC8(netdissect_options *ndo,
                     const u_char *cp, const u_char *ep, u_int len)
{
	const u_char *cp0 = cp;
	const u_int len0 = len;

	while (len) {
		if (len < OF_PHY_PORT_LEN)
			goto invalid;
		/* port_no */
		FUNC3(*cp, 2);
		FUNC2((ndo, "\n\t  port_no %s", FUNC7(ofpp_str, "%u", FUNC0(cp))));
		cp += 2;
		/* hw_addr */
		FUNC3(*cp, ETHER_ADDR_LEN);
		FUNC2((ndo, ", hw_addr %s", FUNC4(ndo, cp)));
		cp += ETHER_ADDR_LEN;
		/* name */
		FUNC3(*cp, OFP_MAX_PORT_NAME_LEN);
		FUNC2((ndo, ", name '"));
		FUNC5(ndo, cp, cp + OFP_MAX_PORT_NAME_LEN);
		FUNC2((ndo, "'"));
		cp += OFP_MAX_PORT_NAME_LEN;

		if (ndo->ndo_vflag < 2) {
			FUNC3(*cp, 24);
			cp += 24;
			goto next_port;
		}
		/* config */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t   config 0x%08x", FUNC1(cp)));
		FUNC6(ndo, ofppc_bm, FUNC1(cp), OFPPC_U);
		cp += 4;
		/* state */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t   state 0x%08x", FUNC1(cp)));
		FUNC6(ndo, ofpps_bm, FUNC1(cp), OFPPS_U);
		cp += 4;
		/* curr */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t   curr 0x%08x", FUNC1(cp)));
		FUNC6(ndo, ofppf_bm, FUNC1(cp), OFPPF_U);
		cp += 4;
		/* advertised */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t   advertised 0x%08x", FUNC1(cp)));
		FUNC6(ndo, ofppf_bm, FUNC1(cp), OFPPF_U);
		cp += 4;
		/* supported */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t   supported 0x%08x", FUNC1(cp)));
		FUNC6(ndo, ofppf_bm, FUNC1(cp), OFPPF_U);
		cp += 4;
		/* peer */
		FUNC3(*cp, 4);
		FUNC2((ndo, "\n\t   peer 0x%08x", FUNC1(cp)));
		FUNC6(ndo, ofppf_bm, FUNC1(cp), OFPPF_U);
		cp += 4;
next_port:
		len -= OF_PHY_PORT_LEN;
	} /* while */
	return cp;

invalid: /* skip the undersized trailing data */
	FUNC2((ndo, "%s", istr));
	FUNC3(*cp0, len0);
	return cp0 + len0;
trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}