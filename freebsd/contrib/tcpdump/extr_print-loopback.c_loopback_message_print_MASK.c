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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
#define  LOOPBACK_FWDDATA 129 
#define  LOOPBACK_REPLY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  fcode_str ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo, const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;
	uint16_t function;

	if (len < 2)
		goto invalid;
	/* function */
	FUNC2(*cp, 2);
	function = FUNC0(cp);
	cp += 2;
	FUNC1((ndo, ", %s", FUNC4(fcode_str, " invalid (%u)", function)));

	switch (function) {
		case LOOPBACK_REPLY:
			if (len < 4)
				goto invalid;
			/* receipt number */
			FUNC2(*cp, 2);
			FUNC1((ndo, ", receipt number %u", FUNC0(cp)));
			cp += 2;
			/* data */
			FUNC1((ndo, ", data (%u octets)", len - 4));
			FUNC2(*cp, len - 4);
			break;
		case LOOPBACK_FWDDATA:
			if (len < 8)
				goto invalid;
			/* forwarding address */
			FUNC2(*cp, ETHER_ADDR_LEN);
			FUNC1((ndo, ", forwarding address %s", FUNC3(ndo, cp)));
			cp += ETHER_ADDR_LEN;
			/* data */
			FUNC1((ndo, ", data (%u octets)", len - 8));
			FUNC2(*cp, len - 8);
			break;
		default:
			FUNC2(*cp, len - 2);
			break;
	}
	return;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, ep - cp);
	return;
trunc:
	FUNC1((ndo, "%s", tstr));
}