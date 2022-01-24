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
 int /*<<< orphan*/  ALL_STD_EXCEPT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long double,long double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(const char *exp, int line, long double actual, long double expected,
    int except)
{
	int actual_except;

	actual_except = FUNC1(ALL_STD_EXCEPT);
	if (!FUNC2(actual, expected)) {
		FUNC3(stderr, "%d: %s returned %d, expecting %d\n",
		    line, exp, actual, expected);
		FUNC0();
	}
	if (actual_except != except) {
		FUNC3(stderr, "%d: %s raised 0x%x, expecting 0x%x\n",
		    line, exp, actual_except, except);
		FUNC0();
	}
}