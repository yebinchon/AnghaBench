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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int const AOEV1_ISSUE_ARG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  aoev1_aflag_str ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo,
                  const u_char *cp, const u_int len)
{
	const u_char *ep = cp + len;

	if (len < AOEV1_ISSUE_ARG_LEN)
		goto invalid;
	/* AFlags */
	FUNC1(*cp, 1);
	FUNC0((ndo, "\n\tAFlags: [%s]", FUNC2(aoev1_aflag_str, "none", *cp)));
	cp += 1;
	/* Err/Feature */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", Err/Feature: %u", *cp));
	cp += 1;
	/* Sector Count (not correlated with the length) */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", Sector Count: %u", *cp));
	cp += 1;
	/* Cmd/Status */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", Cmd/Status: %u", *cp));
	cp += 1;
	/* lba0 */
	FUNC1(*cp, 1);
	FUNC0((ndo, "\n\tlba0: %u", *cp));
	cp += 1;
	/* lba1 */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", lba1: %u", *cp));
	cp += 1;
	/* lba2 */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", lba2: %u", *cp));
	cp += 1;
	/* lba3 */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", lba3: %u", *cp));
	cp += 1;
	/* lba4 */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", lba4: %u", *cp));
	cp += 1;
	/* lba5 */
	FUNC1(*cp, 1);
	FUNC0((ndo, ", lba5: %u", *cp));
	cp += 1;
	/* Reserved */
	FUNC1(*cp, 2);
	cp += 2;
	/* Data */
	if (len > AOEV1_ISSUE_ARG_LEN)
		FUNC0((ndo, "\n\tData: %u bytes", len - AOEV1_ISSUE_ARG_LEN));
	return;

invalid:
	FUNC0((ndo, "%s", istr));
	FUNC1(*cp, ep - cp);
	return;
trunc:
	FUNC0((ndo, "%s", tstr));
}