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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

int
FUNC7(const char *fname, int pollinterval)
{
	char path[MAXPATHLEN];
	sigset_t nset, oset;
	int retval;

	(void)FUNC3(&nset);
	(void)FUNC2(&nset, SIGHUP);
	(void)FUNC2(&nset, SIGINT);
	(void)FUNC2(&nset, SIGQUIT);
	(void)FUNC2(&nset, SIGTERM);
	(void)FUNC2(&nset, SIGTTIN);
	(void)FUNC2(&nset, SIGTTOU);
	(void)FUNC2(&nset, SIGTSTP);
	(void)FUNC2(&nset, SIGCHLD);

	(void)FUNC5(path, sizeof(path), "%s.lock", fname);

	retval = -1;
	for (;;) {
		FUNC1();
		(void)FUNC4(SIG_BLOCK, &nset, &oset);
		if (FUNC0(path) != -1) {
			(void)FUNC4(SIG_SETMASK, &oset, NULL);
			retval = 0;
			break;
		}
		else
			(void)FUNC4(SIG_SETMASK, &oset, NULL);

		if (errno != EEXIST)
			break;

		if (pollinterval) {
			if (pollinterval == -1) {
				errno = EEXIST;
				break;
			}
			(void)FUNC6((unsigned int)pollinterval * 1000);
		}
	}
	FUNC1();
	return retval;
}