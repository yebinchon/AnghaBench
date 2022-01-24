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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int const) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC5(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
	uint32_t vendor;

	if (len < 4)
		goto invalid;
	/* vendor */
	FUNC2(*cp, 4);
	vendor = FUNC0(cp);
	cp += 4;
	FUNC1((ndo, ", vendor 0x%08x (%s)", vendor, FUNC4(vendor)));
	/* data */
	return FUNC3(ndo, cp, ep, len - 4);

invalid: /* skip the undersized data */
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, len);
	return cp + len;
trunc:
	FUNC1((ndo, "%s", tstr));
	return ep;
}