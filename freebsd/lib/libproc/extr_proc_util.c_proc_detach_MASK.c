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
struct proc_handle {int flags; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int EINVAL ; 
 scalar_t__ ESRCH ; 
 int PATTACH_RDONLY ; 
 int PRELEASE_HANG ; 
 int PRELEASE_KILL ; 
 int /*<<< orphan*/  PT_DETACH ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  WUNTRACED ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_handle*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct proc_handle *phdl, int reason)
{
	int status;
	pid_t pid;

	if (phdl == NULL)
		return (EINVAL);
	if (reason == PRELEASE_HANG)
		return (EINVAL);
	if (reason == PRELEASE_KILL) {
		FUNC0(FUNC2(phdl), SIGKILL);
		goto free;
	}
	if ((phdl->flags & PATTACH_RDONLY) != 0)
		goto free;
	pid = FUNC2(phdl);
	if (FUNC3(PT_DETACH, pid, 0, 0) != 0 && errno == ESRCH)
		goto free;
	if (errno == EBUSY) {
		FUNC0(pid, SIGSTOP);
		FUNC4(pid, &status, WUNTRACED);
		FUNC3(PT_DETACH, pid, 0, 0);
		FUNC0(pid, SIGCONT);
	}
free:
	FUNC1(phdl);
	return (0);
}