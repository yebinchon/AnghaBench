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
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  WNOHANG ; 
 scalar_t__ child_terminated ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ssh *ssh)
{
	pid_t pid;
	sigset_t oset, nset;
	int status;

	/* block SIGCHLD while we check for dead children */
	FUNC3(&nset);
	FUNC2(&nset, SIGCHLD);
	FUNC4(SIG_BLOCK, &nset, &oset);
	if (child_terminated) {
		FUNC0("Received SIGCHLD.");
		while ((pid = FUNC5(-1, &status, WNOHANG)) > 0 ||
		    (pid < 0 && errno == EINTR))
			if (pid > 0)
				FUNC1(ssh, pid, status);
		child_terminated = 0;
	}
	FUNC4(SIG_SETMASK, &oset, NULL);
}