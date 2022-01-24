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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
              register const u_char *cp, u_int length)
{
	register u_int ptr;
	register u_int len;

	if (length < 3) {
		FUNC0((ndo, " [bad length %u]", length));
		return (0);
	}
	if ((length + 1) & 3)
		FUNC0((ndo, " [bad length %u]", length));
	FUNC1(cp[2]);
	ptr = cp[2] - 1;
	if (ptr < 3 || ((ptr + 1) & 3) || ptr > length + 1)
		FUNC0((ndo, " [bad ptr %u]", cp[2]));

	for (len = 3; len < length; len += 4) {
		FUNC2(cp[len], 4);
		FUNC0((ndo, " %s", FUNC3(ndo, &cp[len])));
		if (ptr > len)
			FUNC0((ndo, ","));
	}
	return (0);

trunc:
	return (-1);
}