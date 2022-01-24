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
typedef  int /*<<< orphan*/  tms ;
struct timeval {int dummy; } ;
struct thread {int* td_retval; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_times_args {int /*<<< orphan*/ * buf; } ;
struct l_times_argv {void* tms_cstime; void* tms_cutime; void* tms_stime; void* tms_utime; } ;

/* Variables and functions */
 void* FUNC0 (struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,struct timeval*,struct timeval*) ; 
 int FUNC7 (struct l_times_argv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*) ; 

int
FUNC9(struct thread *td, struct linux_times_args *args)
{
	struct timeval tv, utime, stime, cutime, cstime;
	struct l_times_argv tms;
	struct proc *p;
	int error;

	if (args->buf != NULL) {
		p = td->td_proc;
		FUNC1(p);
		FUNC2(p);
		FUNC6(p, &utime, &stime);
		FUNC3(p);
		FUNC5(p, &cutime, &cstime);
		FUNC4(p);

		tms.tms_utime = FUNC0(utime);
		tms.tms_stime = FUNC0(stime);

		tms.tms_cutime = FUNC0(cutime);
		tms.tms_cstime = FUNC0(cstime);

		if ((error = FUNC7(&tms, args->buf, sizeof(tms))))
			return (error);
	}

	FUNC8(&tv);
	td->td_retval[0] = (int)FUNC0(tv);
	return (0);
}