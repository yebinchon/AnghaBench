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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  dochdir ; 
 int /*<<< orphan*/  dofchdir ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* prefix ; 
 int /*<<< orphan*/  prefixlen ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  thechdir ; 

int
FUNC5(int argc, char *argv[])
{

	if (argc != 4)
		FUNC0(1, "usage");

	prefix = argv[1];
	prefixlen = FUNC3(argv[1]);

	if (FUNC2(argv[3], "chdir") == 0)
		thechdir = dochdir;
	else if (FUNC2(argv[3], "fchdir") == 0)
		thechdir = dofchdir;
	else
		FUNC0(EXIT_FAILURE, "invalid chdir type");

	if (FUNC2(argv[2], "simple") == 0)
		FUNC1();
	if (FUNC2(argv[2], "symlink") == 0)
		FUNC4();

	return EXIT_SUCCESS;
}