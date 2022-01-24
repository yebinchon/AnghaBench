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
struct thread {int dummy; } ;
struct reg {int pl_flags; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct linux_pt_reg {int rax; int /*<<< orphan*/  rcx; int /*<<< orphan*/  r10; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  lwpinfo ;
typedef  int /*<<< orphan*/  l_reg ;

/* Variables and functions */
 int PL_FLAG_SCE ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  PT_LWPINFO ; 
 int FUNC0 (struct linux_pt_reg*,void*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct reg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct reg*,struct linux_pt_reg*) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, pid_t pid, void *data)
{
	struct ptrace_lwpinfo lwpinfo;
	struct reg b_reg;
	struct linux_pt_reg l_reg;
	int error;

	error = FUNC1(td, PT_GETREGS, pid, &b_reg, 0);
	if (error != 0)
		return (error);

	FUNC3(&b_reg, &l_reg);

	error = FUNC1(td, PT_LWPINFO, pid, &lwpinfo, sizeof(lwpinfo));
	if (error != 0) {
		FUNC2(td, "PT_LWPINFO failed with error %d", error);
		return (error);
	}
	if (lwpinfo.pl_flags & PL_FLAG_SCE) {
		/*
		 * The strace(1) utility depends on RAX being set to -ENOSYS
		 * on syscall entry; otherwise it loops printing those:
		 *
		 * [ Process PID=928 runs in 64 bit mode. ]
		 * [ Process PID=928 runs in x32 mode. ]
		 */
		l_reg.rax = -38; /* -ENOSYS */

		/*
		 * Undo the mangling done in exception.S:fast_syscall_common().
		 */
		l_reg.r10 = l_reg.rcx;
	}

	error = FUNC0(&l_reg, (void *)data, sizeof(l_reg));
	return (error);
}