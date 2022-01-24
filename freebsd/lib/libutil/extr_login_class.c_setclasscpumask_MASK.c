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
typedef  int /*<<< orphan*/  maskset ;
typedef  int /*<<< orphan*/  login_cap_t ;
typedef  int /*<<< orphan*/  cpusetid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_CPUSET ; 
 int /*<<< orphan*/  CPU_WHICH_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 

void
FUNC8(login_cap_t *lc)
{
	const char *maskstr;
	cpuset_t maskset;
	cpusetid_t setid;

	maskstr = FUNC4(lc, "cpumask", NULL, NULL);
	FUNC0(&maskset);
	if (maskstr == NULL)
		return;
	if (FUNC5("default", maskstr) == 0)
		return;
	if (!FUNC3(maskstr, &maskset)) {
		FUNC7(LOG_WARNING,
		    "list2cpuset(%s) invalid mask specification", maskstr);
		return;
	}

	if (FUNC1(&setid) != 0) {
		FUNC7(LOG_ERR, "cpuset(): %s", FUNC6(errno));
		return;
	}

	if (FUNC2(CPU_LEVEL_CPUSET, CPU_WHICH_PID, -1,
	    sizeof(maskset), &maskset) != 0)
		FUNC7(LOG_ERR, "cpuset_setaffinity(%s): %s", maskstr,
		    FUNC6(errno));
}