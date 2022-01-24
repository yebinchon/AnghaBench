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
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC7(int argc, char **argv)
{
    int optidx = 0;

    FUNC4(argv[0]);

    if (FUNC1(args, num_args, argc, argv, &optidx))
	FUNC6(1);

    if (help_flag)
	FUNC6(0);

    if (version_flag) {
	FUNC3(NULL);
	FUNC0(0);
    }

    FUNC5();

    FUNC2();

    return 0;
}