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
struct proc_handle {int /*<<< orphan*/  status; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int PATTACH_NOSTOP ; 
 int PATTACH_RDONLY ; 
 int /*<<< orphan*/  PS_RUN ; 
 int /*<<< orphan*/  PS_STOP ; 
 int /*<<< orphan*/  PT_ATTACH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc_handle*) ; 
 int FUNC8 (scalar_t__,int,int /*<<< orphan*/ ,struct proc_handle**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC11(pid_t pid, int flags, struct proc_handle **pphdl)
{
	struct proc_handle *phdl;
	int error, status;

	if (pid == 0 || (pid == FUNC4() && (flags & PATTACH_RDONLY) == 0))
		return (EINVAL);
	if (FUNC3(EV_CURRENT) == EV_NONE)
		return (ENOENT);

	/*
	 * Allocate memory for the process handle, a structure containing
	 * all things related to the process.
	 */
	error = FUNC8(pid, flags, PS_RUN, &phdl);
	if (error != 0)
		goto out;

	if ((flags & PATTACH_RDONLY) == 0) {
		if (FUNC9(PT_ATTACH, FUNC7(phdl), 0, 0) != 0) {
			error = errno;
			FUNC0("ERROR: cannot ptrace child process %d", pid);
			goto out;
		}

		/* Wait for the child process to stop. */
		if (FUNC10(pid, &status, WUNTRACED) == -1) {
			error = errno;
			FUNC0("ERROR: child process %d didn't stop as expected", pid);
			goto out;
		}

		/* Check for an unexpected status. */
		if (!FUNC2(status))
			FUNC1("ERROR: child process %d status 0x%x", pid, status);
		else
			phdl->status = PS_STOP;

		if ((flags & PATTACH_NOSTOP) != 0)
			FUNC5(phdl);
	}

out:
	if (error != 0 && phdl != NULL) {
		FUNC6(phdl);
		phdl = NULL;
	}
	*pphdl = phdl;
	return (error);
}