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
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* notify_pipe ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	if (FUNC3(notify_pipe) < 0) {
		FUNC1("pipe(notify_pipe) failed %s", FUNC5(errno));
	} else if ((FUNC2(notify_pipe[0], F_SETFD, FD_CLOEXEC) == -1) ||
	    (FUNC2(notify_pipe[1], F_SETFD, FD_CLOEXEC) == -1)) {
		FUNC1("fcntl(notify_pipe, F_SETFD) failed %s", FUNC5(errno));
		FUNC0(notify_pipe[0]);
		FUNC0(notify_pipe[1]);
	} else {
		FUNC4(notify_pipe[0]);
		FUNC4(notify_pipe[1]);
		return;
	}
	notify_pipe[0] = -1;	/* read end */
	notify_pipe[1] = -1;	/* write end */
}