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
typedef  int /*<<< orphan*/  (* proc_child_func ) (void*) ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  PS_IDLE ; 
 int /*<<< orphan*/  PS_STOP ; 
 int /*<<< orphan*/  PT_TRACE_ME ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* const* environ ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (char const*,char* const*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct proc_handle*) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc_handle**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int FUNC11 (int,int*,int /*<<< orphan*/ ) ; 

int
FUNC12(const char *file, char * const *argv, char * const *envp,
    proc_child_func *pcf, void *child_arg, struct proc_handle **pphdl)
{
	struct proc_handle *phdl;
	int error, status;
	pid_t pid;

	if (FUNC4(EV_CURRENT) == EV_NONE)
		return (ENOENT);

	error = 0;
	phdl = NULL;

	if ((pid = FUNC6()) == -1)
		error = errno;
	else if (pid == 0) {
		/* The child expects to be traced. */
		if (FUNC9(PT_TRACE_ME, 0, 0, 0) != 0)
			FUNC3(1);

		if (pcf != NULL)
			(*pcf)(child_arg);

		if (envp != NULL)
			environ = envp;

		FUNC5(file, argv);

		FUNC3(2);
		/* NOTREACHED */
	} else {
		/* Wait for the child process to stop. */
		if (FUNC11(pid, &status, WUNTRACED) == -1) {
			error = errno;
			FUNC0("ERROR: child process %d didn't stop as expected", pid);
			goto bad;
		}

		/* Check for an unexpected status. */
		if (!FUNC2(status)) {
			error = ENOENT;
			FUNC1("ERROR: child process %d status 0x%x", pid, status);
			goto bad;
		}

		/* The parent owns the process handle. */
		error = FUNC8(pid, 0, PS_IDLE, &phdl);
		if (error == 0)
			phdl->status = PS_STOP;

bad:
		if (error != 0 && phdl != NULL) {
			FUNC7(phdl);
			phdl = NULL;
		}
	}
	*pphdl = phdl;
	return (error);
}