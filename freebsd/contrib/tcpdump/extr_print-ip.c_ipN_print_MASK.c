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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC4(netdissect_options *ndo, register const u_char *bp, register u_int length)
{
	if (length < 1) {
		FUNC0((ndo, "truncated-ip %d", length));
		return;
	}

	FUNC1(*bp);
	switch (*bp & 0xF0) {
	case 0x40:
		FUNC3 (ndo, bp, length);
		break;
	case 0x60:
		FUNC2 (ndo, bp, length);
		break;
	default:
		FUNC0((ndo, "unknown ip %d", (*bp & 0xF0) >> 4));
		break;
	}
	return;

trunc:
	FUNC0((ndo, "%s", tstr));
	return;
}