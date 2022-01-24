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
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC4(netdissect_options *ndo, const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;
	uint16_t skipCount;

	FUNC1((ndo, "Loopback"));
	if (len < 2)
		goto invalid;
	/* skipCount */
	FUNC2(*cp, 2);
	skipCount = FUNC0(cp);
	cp += 2;
	FUNC1((ndo, ", skipCount %u", skipCount));
	if (skipCount % 8)
		FUNC1((ndo, " (bogus)"));
	if (skipCount > len - 2)
		goto invalid;
	FUNC3(ndo, cp + skipCount, len - 2 - skipCount);
	return;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, ep - cp);
	return;
trunc:
	FUNC1((ndo, "%s", tstr));
}