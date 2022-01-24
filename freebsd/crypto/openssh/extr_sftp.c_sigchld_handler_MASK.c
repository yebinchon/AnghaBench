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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  WNOHANG ; 
 int errno ; 
 int sshpid ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC2(int sig)
{
	int save_errno = errno;
	pid_t pid;
	const char msg[] = "\rConnection closed.  \n";

	/* Report if ssh transport process dies. */
	while ((pid = FUNC0(sshpid, NULL, WNOHANG)) == -1 && errno == EINTR)
		continue;
	if (pid == sshpid) {
		(void)FUNC1(STDERR_FILENO, msg, sizeof(msg) - 1);
		sshpid = -1;
	}

	errno = save_errno;
}