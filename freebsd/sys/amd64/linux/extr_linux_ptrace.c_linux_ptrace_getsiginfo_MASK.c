#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_signo; } ;
struct ptrace_lwpinfo {int pl_flags; TYPE_1__ pl_siginfo; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  lwpinfo ;
typedef  scalar_t__ l_ulong ;
typedef  int /*<<< orphan*/  l_siginfo_t ;
typedef  int /*<<< orphan*/  l_siginfo ;

/* Variables and functions */
 int EINVAL ; 
 int PL_FLAG_SI ; 
 int /*<<< orphan*/  PT_LWPINFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ptrace_lwpinfo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct thread *td, pid_t pid, l_ulong data)
{
	struct ptrace_lwpinfo lwpinfo;
	l_siginfo_t l_siginfo;
	int error, sig;

	error = FUNC2(td, PT_LWPINFO, pid, &lwpinfo, sizeof(lwpinfo));
	if (error != 0) {
		FUNC3(td, "PT_LWPINFO failed with error %d", error);
		return (error);
	}

	if ((lwpinfo.pl_flags & PL_FLAG_SI) == 0) {
		error = EINVAL;
		FUNC3(td, "no PL_FLAG_SI, returning %d", error);
		return (error);
	}

	sig = FUNC0(lwpinfo.pl_siginfo.si_signo);
	FUNC4(&lwpinfo.pl_siginfo, &l_siginfo, sig);
	error = FUNC1(&l_siginfo, (void *)data, sizeof(l_siginfo));
	return (error);
}