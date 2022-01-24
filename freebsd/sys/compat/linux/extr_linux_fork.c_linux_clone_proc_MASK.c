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
struct thread {int /*<<< orphan*/ * td_retval; TYPE_1__* td_proc; } ;
struct proc {int p_sigparent; int /*<<< orphan*/  p_pid; } ;
struct linux_emuldata {int /*<<< orphan*/ * child_clear_tid; int /*<<< orphan*/ * child_set_tid; } ;
struct linux_clone_args {int flags; int /*<<< orphan*/  tls; int /*<<< orphan*/  stack; int /*<<< orphan*/ * parent_tidptr; int /*<<< orphan*/ * child_tidptr; } ;
struct fork_req {int fr_flags; struct proc** fr_procp; } ;
typedef  int /*<<< orphan*/  fr ;
struct TYPE_2__ {int /*<<< orphan*/  p_pptr; } ;

/* Variables and functions */
 int EINVAL ; 
 struct thread* FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int LINUX_CLONE_CHILD_CLEARTID ; 
 int LINUX_CLONE_CHILD_SETTID ; 
 int LINUX_CLONE_FILES ; 
 int LINUX_CLONE_FS ; 
 int LINUX_CLONE_PARENT ; 
 int LINUX_CLONE_PARENT_SETTID ; 
 int LINUX_CLONE_SETTLS ; 
 int LINUX_CLONE_SIGHAND ; 
 int LINUX_CLONE_VFORK ; 
 int LINUX_CLONE_VM ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int RFFDG ; 
 int RFMEM ; 
 int RFPPWAIT ; 
 int RFPROC ; 
 int RFSIGSHARE ; 
 int RFSTOPPED ; 
 int /*<<< orphan*/  SRQ_BORING ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct fork_req*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct linux_emuldata* FUNC9 (struct thread*) ; 
 int FUNC10 (struct thread*,struct fork_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct proc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC17 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct thread*) ; 
 int /*<<< orphan*/  FUNC21 (struct thread*) ; 

__attribute__((used)) static int
FUNC22(struct thread *td, struct linux_clone_args *args)
{
	struct fork_req fr;
	int error, ff = RFPROC | RFSTOPPED;
	struct proc *p2;
	struct thread *td2;
	int exit_signal;
	struct linux_emuldata *em;

	exit_signal = args->flags & 0x000000ff;
	if (FUNC2(exit_signal)) {
		exit_signal = FUNC15(exit_signal);
	} else if (exit_signal != 0)
		return (EINVAL);

	if (args->flags & LINUX_CLONE_VM)
		ff |= RFMEM;
	if (args->flags & LINUX_CLONE_SIGHAND)
		ff |= RFSIGSHARE;
	/*
	 * XXX: In Linux, sharing of fs info (chroot/cwd/umask)
	 * and open files is independent.  In FreeBSD, its in one
	 * structure but in reality it does not cause any problems
	 * because both of these flags are usually set together.
	 */
	if (!(args->flags & (LINUX_CLONE_FILES | LINUX_CLONE_FS)))
		ff |= RFFDG;

	if (args->flags & LINUX_CLONE_PARENT_SETTID)
		if (args->parent_tidptr == NULL)
			return (EINVAL);

	if (args->flags & LINUX_CLONE_VFORK)
		ff |= RFPPWAIT;

	FUNC7(&fr, sizeof(fr));
	fr.fr_flags = ff;
	fr.fr_procp = &p2;
	error = FUNC10(td, &fr);
	if (error)
		return (error);

	td2 = FUNC0(p2);

	/* create the emuldata */
	FUNC12(td, td2, args->flags);

	em = FUNC9(td2);
	FUNC1(em != NULL, ("clone_proc: emuldata not found.\n"));

	if (args->flags & LINUX_CLONE_CHILD_SETTID)
		em->child_set_tid = args->child_tidptr;
	else
		em->child_set_tid = NULL;

	if (args->flags & LINUX_CLONE_CHILD_CLEARTID)
		em->child_clear_tid = args->child_tidptr;
	else
		em->child_clear_tid = NULL;

	if (args->flags & LINUX_CLONE_PARENT_SETTID) {
		error = FUNC8(&p2->p_pid, args->parent_tidptr,
		    sizeof(p2->p_pid));
		if (error)
			FUNC11(td, "copyout p_pid failed!");
	}

	FUNC3(p2);
	p2->p_sigparent = exit_signal;
	FUNC4(p2);
	/*
	 * In a case of stack = NULL, we are supposed to COW calling process
	 * stack. This is what normal fork() does, so we just keep tf_rsp arg
	 * intact.
	 */
	FUNC14(td2, FUNC5(args->stack));

	if (args->flags & LINUX_CLONE_SETTLS)
		FUNC13(td2, args->tls);

	/*
	 * If CLONE_PARENT is set, then the parent of the new process will be
	 * the same as that of the calling process.
	 */
	if (args->flags & LINUX_CLONE_PARENT) {
		FUNC18(&proctree_lock);
		FUNC3(p2);
		FUNC16(p2, td->td_proc->p_pptr, true);
		FUNC4(p2);
		FUNC19(&proctree_lock);
	}

	/*
	 * Make this runnable after we are finished with it.
	 */
	FUNC20(td2);
	FUNC6(td2);
	FUNC17(td2, SRQ_BORING);
	FUNC21(td2);

	td->td_retval[0] = p2->p_pid;

	return (0);
}