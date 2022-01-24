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
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int const AOEV1_MAC_ARG_LEN ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 int /*<<< orphan*/  aoev1_dcmd_str ; 
 int /*<<< orphan*/  aoev1_mcmd_str ; 
 int /*<<< orphan*/  aoev1_merror_str ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
                const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;
	uint8_t dircount, i;

	if (len < AOEV1_MAC_ARG_LEN)
		goto invalid;
	/* Reserved */
	FUNC1(*cp, 1);
	cp += 1;
	/* MCmd */
	FUNC1(*cp, 1);
	FUNC0((ndo, "\n\tMCmd: %s", FUNC3(aoev1_mcmd_str, "Unknown (0x%02x)", *cp)));
	cp += 1;
	/* MError */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", MError: %s", FUNC3(aoev1_merror_str, "Unknown (0x%02x)", *cp)));
	cp += 1;
	/* Dir Count */
	FUNC1(*cp, 1);
	dircount = *cp;
	cp += 1;
	FUNC0((ndo, ", Dir Count: %u", dircount));
	if (AOEV1_MAC_ARG_LEN + dircount * 8 > len)
		goto invalid;
	/* directives */
	for (i = 0; i < dircount; i++) {
		/* Reserved */
		FUNC1(*cp, 1);
		cp += 1;
		/* DCmd */
		FUNC1(*cp, 1);
		FUNC0((ndo, "\n\t DCmd: %s", FUNC3(aoev1_dcmd_str, "Unknown (0x%02x)", *cp)));
		cp += 1;
		/* Ethernet Address */
		FUNC1(*cp, ETHER_ADDR_LEN);
		FUNC0((ndo, ", Ethernet Address: %s", FUNC2(ndo, cp)));
		cp += ETHER_ADDR_LEN;
	}
	return;

invalid:
	FUNC0((ndo, "%s", istr));
	FUNC1(*cp, ep - cp);
	return;
trunc:
	FUNC0((ndo, "%s", tstr));
}