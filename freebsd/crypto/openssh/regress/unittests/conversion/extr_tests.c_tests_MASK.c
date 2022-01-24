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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ LONG_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned long long) ; 

void
FUNC5(void)
{
	char buf[1024];

	FUNC2("conversion_convtime");
	FUNC0(FUNC3("0"), 0);
	FUNC0(FUNC3("1"), 1);
	FUNC0(FUNC3("1S"), 1);
	/* from the examples in the comment above the function */
	FUNC0(FUNC3("90m"), 5400);
	FUNC0(FUNC3("1h30m"), 5400);
	FUNC0(FUNC3("2d"), 172800);
	FUNC0(FUNC3("1w"), 604800);

	/* negative time is not allowed */
	FUNC0(FUNC3("-7"), -1);
	FUNC0(FUNC3("-9d"), -1);
	
	/* overflow */
	FUNC4(buf, sizeof buf, "%llu", (unsigned long long)LONG_MAX + 1);
	FUNC0(FUNC3(buf), -1);

	/* overflow with multiplier */
	FUNC4(buf, sizeof buf, "%lluM", (unsigned long long)LONG_MAX/60 + 1);
	FUNC0(FUNC3(buf), -1);
	FUNC0(FUNC3("1000000000000000000000w"), -1);
	FUNC1();
}