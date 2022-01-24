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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__* pids ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC8(FILE *iop)
{
	int fdes, status;
	pid_t pid;
	sigset_t sigset, osigset;

	/*
	 * pclose returns -1 if stream is not associated with a
	 * `popened' command, or, if already `pclosed'.
	 */
	if (pids == 0 || pids[fdes = FUNC3(iop)] == 0)
		return (-1);
	FUNC2(iop);
	FUNC5(&sigset);
	FUNC4(&sigset, SIGINT);
	FUNC4(&sigset, SIGQUIT);
	FUNC4(&sigset, SIGHUP);
	FUNC6(SIG_BLOCK, &sigset, &osigset);
	while ((pid = FUNC7(pids[fdes], &status, 0)) < 0 && errno == EINTR)
		continue;
	FUNC6(SIG_SETMASK, &osigset, NULL);
	pids[fdes] = 0;
	if (pid < 0)
		return (pid);
	if (FUNC1(status))
		return (FUNC0(status));
	return (1);
}