#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  gen; } ;
struct TYPE_12__ {TYPE_2__ md_invl_gen; } ;
struct TYPE_10__ {int /*<<< orphan*/  code; } ;
struct thread {int /*<<< orphan*/  td_errno; TYPE_6__* td_pcb; TYPE_8__* td_frame; TYPE_3__ td_md; TYPE_1__ td_sa; int /*<<< orphan*/  td_proc; } ;
struct TYPE_13__ {void* ksi_addr; int /*<<< orphan*/  ksi_code; int /*<<< orphan*/  ksi_signo; } ;
typedef  TYPE_4__ ksiginfo_t ;
struct TYPE_15__ {scalar_t__ tf_rip; int /*<<< orphan*/  tf_rflags; } ;
struct TYPE_14__ {scalar_t__ pcb_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  PSL_T ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  TRAP_TRACE ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*,TYPE_4__*) ; 

void
FUNC14(struct thread *td, int traced)
{
	ksiginfo_t ksi;

#ifdef DIAGNOSTIC
	if (!TRAPF_USERMODE(td->td_frame)) {
		panic("syscall");
		/* NOT REACHED */
	}
#endif
	FUNC10(td);

	/*
	 * Traced syscall.
	 */
	if (FUNC3(traced)) {
		td->td_frame->tf_rflags &= ~PSL_T;
		FUNC6(&ksi);
		ksi.ksi_signo = SIGTRAP;
		ksi.ksi_code = TRAP_TRACE;
		ksi.ksi_addr = (void *)td->td_frame->tf_rip;
		FUNC13(td, &ksi);
	}

	FUNC0(FUNC1(td->td_pcb),
	    ("System call %s returning with kernel FPU ctx leaked",
	     FUNC11(td->td_proc, td->td_sa.code)));
	FUNC0(td->td_pcb->pcb_save == FUNC5(td),
	    ("System call %s returning with mangled pcb_save",
	     FUNC11(td->td_proc, td->td_sa.code)));
	FUNC0(FUNC8(),
	    ("System call %s returning with leaked invl_gen %lu",
	    FUNC11(td->td_proc, td->td_sa.code),
	    td->td_md.md_invl_gen.gen));

	FUNC12(td);

	/*
	 * If the user-supplied value of %rip is not a canonical
	 * address, then some CPUs will trigger a ring 0 #GP during
	 * the sysret instruction.  However, the fault handler would
	 * execute in ring 0 with the user's %gs and %rsp which would
	 * not be safe.  Instead, use the full return path which
	 * catches the problem safely.
	 */
	if (FUNC3(td->td_frame->tf_rip >= VM_MAXUSER_ADDRESS))
		FUNC9(td->td_pcb, PCB_FULL_IRET);

	FUNC4(td->td_errno);
}