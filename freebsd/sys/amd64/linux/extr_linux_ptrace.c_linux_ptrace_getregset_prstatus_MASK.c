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
struct thread {struct pcb* td_pcb; } ;
struct reg {int pl_flags; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct pcb {unsigned long pcb_fsbase; unsigned long pcb_gsbase; } ;
struct linux_pt_regset {int rax; size_t iov_len; scalar_t__ iov_base; int /*<<< orphan*/  rcx; int /*<<< orphan*/  r10; } ;
struct iovec {int rax; size_t iov_len; scalar_t__ iov_base; int /*<<< orphan*/  rcx; int /*<<< orphan*/  r10; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  lwpinfo ;
typedef  scalar_t__ l_ulong ;
typedef  int /*<<< orphan*/  l_regset ;
typedef  int /*<<< orphan*/  iov ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int PL_FLAG_SCE ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  PT_LWPINFO ; 
 int FUNC1 (void const*,struct linux_pt_regset*,int) ; 
 int FUNC2 (struct linux_pt_regset*,void*,int) ; 
 struct thread* curthread ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct reg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct reg*,unsigned long,unsigned long,struct linux_pt_regset*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcb*) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, pid_t pid, l_ulong data)
{
	struct ptrace_lwpinfo lwpinfo;
	struct reg b_reg;
	struct linux_pt_regset l_regset;
	struct iovec iov;
	struct pcb *pcb;
	unsigned long fsbase, gsbase;
	size_t len;
	int error;

	error = FUNC1((const void *)data, &iov, sizeof(iov));
	if (error != 0) {
		FUNC4(td, "copyin error %d", error);
		return (error);
	}

	error = FUNC3(td, PT_GETREGS, pid, &b_reg, 0);
	if (error != 0)
		return (error);

	pcb = td->td_pcb;
	if (td == curthread)
		FUNC6(pcb);
	fsbase = pcb->pcb_fsbase;
	gsbase = pcb->pcb_gsbase;

	FUNC5(&b_reg, fsbase, gsbase, &l_regset);

	error = FUNC3(td, PT_LWPINFO, pid, &lwpinfo, sizeof(lwpinfo));
	if (error != 0) {
		FUNC4(td, "PT_LWPINFO failed with error %d", error);
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
		l_regset.rax = -38; /* -ENOSYS */

		/*
		 * Undo the mangling done in exception.S:fast_syscall_common().
		 */
		l_regset.r10 = l_regset.rcx;
	}

	len = FUNC0(iov.iov_len, sizeof(l_regset));
	error = FUNC2(&l_regset, (void *)iov.iov_base, len);
	if (error != 0) {
		FUNC4(td, "copyout error %d", error);
		return (error);
	}

	iov.iov_len -= len;
	error = FUNC2(&iov, (void *)data, sizeof(iov));
	if (error != 0) {
		FUNC4(td, "iov copyout error %d", error);
		return (error);
	}

	return (error);
}