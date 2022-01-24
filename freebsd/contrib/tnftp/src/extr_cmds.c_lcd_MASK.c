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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* localcwd ; 
 char* localhome ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void
FUNC7(int argc, char *argv[])
{
	char *locdir;

	code = -1;
	if (argc == 1) {
		argc++;
		argv[1] = localhome;
	}
	if (argc != 2) {
		FUNC0("usage: %s [local-directory]\n", argv[0]);
		return;
	}
	if ((locdir = FUNC4(argv[1])) == NULL)
		return;
	if (FUNC1(locdir) == -1)
		FUNC6("Can't chdir `%s'", locdir);
	else {
		FUNC5();
		if (localcwd[0]) {
			FUNC2(ttyout, "Local directory now: %s\n", localcwd);
			code = 0;
		} else {
			FUNC2(ttyout, "Unable to determine local directory\n");
		}
	}
	(void)FUNC3(locdir);
}