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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 

void
FUNC4(netdissect_options *ndo, u_char c)
{
	if (!FUNC0(c)) {
		c = FUNC3(c);
		FUNC2((ndo, "M-"));
	}
	if (!FUNC1(c)) {
		c ^= 0x40;	/* DEL to ?, others to alpha */
		FUNC2((ndo, "^"));
	}
	FUNC2((ndo, "%c", c));
}