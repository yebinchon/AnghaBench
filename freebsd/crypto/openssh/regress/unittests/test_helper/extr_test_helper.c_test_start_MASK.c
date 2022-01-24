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
 int /*<<< orphan*/  SIGINFO ; 
 char* active_test_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  siginfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 char* subtest_info ; 
 int test_number ; 
 scalar_t__ verbose_mode ; 

void
FUNC4(const char *n)
{
	FUNC0(active_test_name == NULL);
	FUNC0((active_test_name = FUNC3(n)) != NULL);
	*subtest_info = '\0';
	if (verbose_mode)
		FUNC1("test %u - \"%s\": ", test_number, active_test_name);
	test_number++;
#ifdef SIGINFO
	signal(SIGINFO, siginfo);
#endif
}