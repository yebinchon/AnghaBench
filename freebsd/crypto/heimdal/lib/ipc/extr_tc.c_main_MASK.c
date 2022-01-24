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
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC6(int argc, char **argv)
{
    int optidx = 0;

    FUNC3(argv[0]);

    if (FUNC1(args, num_args, argc, argv, &optidx))
	FUNC5(1);

    if (help_flag)
	FUNC5(0);

    if (version_flag) {
	FUNC2(NULL);
	FUNC0(0);
    }

#ifdef __APPLE__
    test_ipc("MACH:org.h5l.test-ipc");
#endif
    FUNC4("ANY:org.h5l.test-ipc");
    FUNC4("UNIX:org.h5l.test-ipc");

    return 0;
}