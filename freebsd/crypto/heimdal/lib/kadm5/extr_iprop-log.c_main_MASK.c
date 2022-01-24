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
typedef  int krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  commands ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int
FUNC9(int argc, char **argv)
{
    int optidx = 0;
    krb5_error_code ret;

    FUNC5(argv[0]);

    if(FUNC2(args, num_args, argc, argv, &optidx))
	FUNC7(1);
    if(help_flag)
	FUNC7(0);
    if(version_flag) {
	FUNC4(NULL);
	FUNC1(0);
    }
    argc -= optidx;
    argv += optidx;
    if(argc == 0)
	FUNC7(1);

    ret = FUNC3(&context);
    if (ret)
	FUNC0(1, "krb5_init_context failed with: %d\n", ret);

    ret = FUNC6(commands, argc, argv);
    if(ret == -1)
	FUNC8 ("unrecognized command: %s", argv[0]);
    return ret;
}