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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC6(int argc, char **argv)
{
    int optidx = 0;

    FUNC4 (argv[0]);

    if(FUNC2(args, num_args, argc, argv, &optidx))
	FUNC5(1);
    if(help_flag)
	FUNC5(0);
    if(version_flag) {
	FUNC3(NULL);
	FUNC1(0);
    }
    argv += optidx;
    argc -= optidx;
    if (argc != 1)
	FUNC5 (1);

    return FUNC0 (argv[0]);
}