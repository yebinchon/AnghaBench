#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
#define  IP6CP_IFID 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  ip6cpopt_values ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
                           const u_char *p, int length)
{
	int len, opt;

	if (length < 2)
		return 0;
	FUNC2(*p, 2);
	len = p[1];
	opt = p[0];
	if (length < len)
		return 0;
	if (len < 2) {
		FUNC1((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
		       FUNC4(ip6cpopt_values,"unknown",opt),
		       opt,
		       len));
		return 0;
	}

	FUNC1((ndo, "\n\t  %s Option (0x%02x), length %u",
	       FUNC4(ip6cpopt_values,"unknown",opt),
	       opt,
	       len));

	switch (opt) {
	case IP6CP_IFID:
		if (len != 10) {
			FUNC1((ndo, " (length bogus, should be = 10)"));
			return len;
		}
		FUNC2(*(p + 2), 8);
		FUNC1((ndo, ": %04x:%04x:%04x:%04x",
		       FUNC0(p + 2),
		       FUNC0(p + 4),
		       FUNC0(p + 6),
		       FUNC0(p + 8)));
		break;
	default:
		/*
		 * Unknown option; dump it as raw bytes now if we're
		 * not going to do so below.
		 */
		if (ndo->ndo_vflag < 2)
			FUNC3(ndo, &p[2], "\n\t    ", len - 2);
		break;
	}
	if (ndo->ndo_vflag > 1)
		FUNC3(ndo, &p[2], "\n\t    ", len - 2); /* exclude TLV header */

	return len;

trunc:
	FUNC1((ndo, "[|ip6cp]"));
	return 0;
}