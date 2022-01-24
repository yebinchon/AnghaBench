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
typedef  int /*<<< orphan*/  heim_sipc ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  test_service ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC8(int argc, char **argv)
{
    heim_sipc u;
    int optidx = 0;

    FUNC6(argv[0]);

    if (FUNC1(args, num_args, argc, argv, &optidx))
	FUNC7(1);

    if (help_flag)
	FUNC7(0);

    if (version_flag) {
	FUNC5(NULL);
	FUNC0(0);
    }

#if __APPLE__
    {
	heim_sipc mach;
	heim_sipc_launchd_mach_init("org.h5l.test-ipc",
				    test_service, NULL, &mach);
    }
#endif
    FUNC4("org.h5l.test-ipc",
			   test_service, NULL, &u);
    FUNC2();

    return 0;
}