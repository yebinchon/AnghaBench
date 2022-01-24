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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,long) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(const atf_tc_t *tc, const char *path)
{
	time_t last_ts = 0;
	int res;

	/* atf_tc_expect_fail("PR kern/51762"); */

	res = FUNC4(path);
	if (res == -1)
		FUNC1("chdir failed");

	for (int i = 0; i < 5; i++) {
		time_t l = FUNC2();
		FUNC3("last lock: %ld\n", (long)l);
		FUNC0(i == 0 || l > last_ts,
		    "iteration %d: lock time did not increase, old time %lu, "
		    "new time %lu", i,
		    (unsigned long)last_ts, (unsigned long)l);
		last_ts = l;
		FUNC5(2);
	}
	FUNC4("/");
}