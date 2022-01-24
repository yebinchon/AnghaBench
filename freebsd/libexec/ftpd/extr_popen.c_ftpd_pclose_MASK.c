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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__* pids ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC8(FILE *iop)
{
	int fdes, omask, status;
	pid_t pid;

	/*
	 * pclose returns -1 if stream is not associated with a
	 * `popened' command, or, if already `pclosed'.
	 */
	if (pids == NULL || pids[fdes = FUNC3(iop)] == 0)
		return (-1);
	(void)FUNC2(iop);
	omask = FUNC4(FUNC5(SIGINT)|FUNC5(SIGQUIT)|FUNC5(SIGHUP));
	while ((pid = FUNC7(pids[fdes], &status, 0)) < 0 && errno == EINTR)
		continue;
	(void)FUNC6(omask);
	pids[fdes] = 0;
	if (pid < 0)
		return (pid);
	if (FUNC1(status))
		return (FUNC0(status));
	return (1);
}