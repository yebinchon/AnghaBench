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
 int /*<<< orphan*/  commands ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,char**) ; 
 scalar_t__ stat_file_string ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

int
FUNC11(int argc, char **argv)
{
    int ret, optidx = 0;

    FUNC7 (argv[0]);

    if(FUNC2(args, num_args, argc, argv, &optidx))
	FUNC9(1);
    if(help_flag)
	FUNC9(0);
    if(version_flag) {
	FUNC6(NULL);
	FUNC1(0);
    }
    argv += optidx;
    argc -= optidx;

    if (argc == 0)
	FUNC9(1);

    ret = FUNC4(&context);
    if (ret)
	FUNC0(1, "hx509_context_init failed with %d", ret);

    if (stat_file_string)
	FUNC5(context, stat_file_string);

    ret = FUNC8(commands, argc, argv);
    if(ret == -1)
	FUNC10 ("unrecognized command: %s", argv[0]);

    FUNC3(&context);

    return ret;
}