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
 int /*<<< orphan*/  __progname ; 
 int be_verbose ; 
 int compile_opts_only ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char *argv[])
{
	FUNC0("Platform-independent login recording test driver\n");

	__progname = FUNC2(argv[0]);
	if (argc == 2) {
		if (FUNC3(argv[1], "-i", 3) == 0)
			compile_opts_only = 1;
		else if (FUNC3(argv[1], "-v", 3) == 0)
			be_verbose=1;
	}

	if (!compile_opts_only) {
		if (be_verbose && !FUNC5())
			return 1;

		if (!FUNC4())
			return 1;
	}

	FUNC1();

	return 0;
}