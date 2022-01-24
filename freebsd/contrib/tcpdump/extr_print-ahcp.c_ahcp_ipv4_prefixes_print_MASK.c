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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
	const char *sep = ": ";

	while (cp < ep) {
		if (cp + 5 > ep)
			goto invalid;
		FUNC1(*cp, 5);
		FUNC0((ndo, "%s%s/%u", sep, FUNC2(ndo, cp), *(cp + 4)));
		cp += 5;
		sep = ", ";
	}
	return 0;

invalid:
	FUNC0((ndo, "%s", istr));
	FUNC1(*cp, ep - cp);
	return 0;
trunc:
	FUNC0((ndo, "%s", tstr));
	return -1;
}