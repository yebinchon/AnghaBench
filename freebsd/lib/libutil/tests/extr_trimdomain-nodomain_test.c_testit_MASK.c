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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int tests ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(const char *input, int hostsize, const char *output, const char *test)
{
	char *testhost;
	const char *expected = (output == NULL) ? input : output;

	testhost = FUNC3(input);
	FUNC5(testhost, hostsize < 0 ? (int)FUNC4(testhost) : hostsize);
	tests++;
	if (FUNC2(testhost, expected) != 0) {
		FUNC1("not ok %d - %s\n", tests, test);
		FUNC1("# %s -> %s (expected %s)\n", input, testhost, expected);
	} else
		FUNC1("ok %d - %s\n", tests, test);
	FUNC0(testhost);
	return;
}