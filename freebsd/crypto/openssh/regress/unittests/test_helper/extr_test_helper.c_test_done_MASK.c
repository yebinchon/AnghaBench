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
 int /*<<< orphan*/ * active_test_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  quiet_mode ; 
 int /*<<< orphan*/  stdout ; 
 char* subtest_info ; 
 scalar_t__ verbose_mode ; 

void
FUNC4(void)
{
	*subtest_info = '\0';
	FUNC0(active_test_name != NULL);
	FUNC2(active_test_name);
	active_test_name = NULL;
	if (verbose_mode)
		FUNC3("OK\n");
	else if (!quiet_mode) {
		FUNC3(".");
		FUNC1(stdout);
	}
}