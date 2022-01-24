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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  OFPPC_U ; 
 int /*<<< orphan*/  OFPPF_U ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofpp_str ; 
 int /*<<< orphan*/  ofppc_bm ; 
 int /*<<< orphan*/  ofppf_bm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC7(netdissect_options *ndo,
                    const u_char *cp, const u_char *ep)
{
	/* port_no */
	FUNC3(*cp, 2);
	FUNC2((ndo, "\n\t port_no %s", FUNC6(ofpp_str, "%u", FUNC0(cp))));
	cp += 2;
	/* hw_addr */
	FUNC3(*cp, ETHER_ADDR_LEN);
	FUNC2((ndo, ", hw_addr %s", FUNC4(ndo, cp)));
	cp += ETHER_ADDR_LEN;
	/* config */
	FUNC3(*cp, 4);
	FUNC2((ndo, "\n\t config 0x%08x", FUNC1(cp)));
	FUNC5(ndo, ofppc_bm, FUNC1(cp), OFPPC_U);
	cp += 4;
	/* mask */
	FUNC3(*cp, 4);
	FUNC2((ndo, "\n\t mask 0x%08x", FUNC1(cp)));
	FUNC5(ndo, ofppc_bm, FUNC1(cp), OFPPC_U);
	cp += 4;
	/* advertise */
	FUNC3(*cp, 4);
	FUNC2((ndo, "\n\t advertise 0x%08x", FUNC1(cp)));
	FUNC5(ndo, ofppf_bm, FUNC1(cp), OFPPF_U);
	cp += 4;
	/* pad */
	FUNC3(*cp, 4);
	return cp + 4;

trunc:
	FUNC2((ndo, "%s", tstr));
	return ep;
}