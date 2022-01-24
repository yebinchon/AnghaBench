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
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  force ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  ignorelabel ; 
 int optind ; 
 int /*<<< orphan*/  printonly ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(int argc, char *argv[])
{
	int n, ex = 0;
	struct rlimit rl;

	while ((n = FUNC2(argc, argv, "bfp")) != -1) {
		switch (n) {
		case 'b':
			ignorelabel++;
			break;
		case 'p':
			printonly++;
			break;
		case 'f':
			force++;
			break;
		default:
			FUNC8();
		}
	}
	if (argc - optind < 1)
		FUNC8();

	FUNC7();

	/* Increase our data size to the max */
	if (FUNC3(RLIMIT_DATA, &rl) == 0) {
		rl.rlim_cur = rl.rlim_max;
		if (FUNC6(RLIMIT_DATA, &rl) < 0)
			FUNC9("can't get resource limit to max data size");
	} else
		FUNC9("can't get resource limit for data size");

	for (n = optind; n < argc; n++) {
		if (argc - optind != 1)
			(void)FUNC5(argv[n]);
		ex += FUNC1(argv[n]);
		if (n < argc - 1)
			FUNC4('\n');
	}

	FUNC0(ex);
}