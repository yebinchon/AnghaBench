#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct vm_map {int /*<<< orphan*/  pmap; } ;
struct trapframe {scalar_t__ tf_pc; int tf_spsr; scalar_t__ tf_usr_lr; } ;
struct TYPE_4__ {scalar_t__ md_spinlock_count; } ;
struct thread {scalar_t__ td_cowgen; struct proc* td_proc; scalar_t__ td_pticks; TYPE_1__ td_md; struct trapframe* td_frame; } ;
struct proc {scalar_t__ p_cowgen; TYPE_2__* p_vmspace; } ;
struct ksig {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  traps; } ;
struct TYPE_5__ {struct vm_map vm_map; } ;

/* Variables and functions */
 scalar_t__ ARM_VECTORS_LOW ; 
 int KERN_SUCCESS ; 
 int PSR_F ; 
 int PSR_I ; 
 int SIGSEGV ; 
 scalar_t__ FUNC0 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_FAULT_NORMAL ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 scalar_t__ VM_MIN_ADDRESS ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct trapframe*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct ksig*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int last_fault_code ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,struct trapframe*) ; 
 TYPE_3__ uvmexp ; 
 int /*<<< orphan*/  v_trap ; 
 scalar_t__ vector_page ; 
 int FUNC12 (struct vm_map*,scalar_t__,int,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC13(struct trapframe *tf)
{
	struct thread *td;
	struct proc * p;
	struct vm_map *map;
	vm_offset_t fault_pc, va;
	int error = 0, signo, ucode;
	struct ksig ksig;

#if 0
	/* Update vmmeter statistics */
	uvmexp.traps++;
#endif
#if 0
	printf("prefetch abort handler: %p %p\n", (void*)tf->tf_pc,
	    (void*)tf->tf_usr_lr);
#endif

 	td = curthread;
	p = td->td_proc;
	FUNC1(v_trap);

	if (FUNC0(tf)) {
		td->td_frame = tf;
		if (td->td_cowgen != td->td_proc->p_cowgen)
			FUNC9(td);
	}
	fault_pc = tf->tf_pc;
	if (td->td_md.md_spinlock_count == 0) {
		if (FUNC3(tf->tf_spsr & PSR_I) == 0)
			FUNC6(PSR_I);
		if (FUNC3(tf->tf_spsr & PSR_F) == 0)
			FUNC6(PSR_F);
	}

	/* Prefetch aborts cannot happen in kernel mode */
	if (FUNC2(!FUNC0(tf)))
		FUNC5(tf, 0, tf->tf_pc, NULL, &ksig);
	td->td_pticks = 0;


	/* Ok validate the address, can only execute in USER space */
	if (FUNC2(fault_pc >= VM_MAXUSER_ADDRESS ||
	    (fault_pc < VM_MIN_ADDRESS && vector_page == ARM_VECTORS_LOW))) {
		signo = SIGSEGV;
		ucode = 0;
		goto do_trapsignal;
	}

	map = &td->td_proc->p_vmspace->vm_map;
	va = FUNC10(fault_pc);

	/*
	 * See if the pmap can handle this fault on its own...
	 */
#ifdef DEBUG
	last_fault_code = -1;
#endif
	if (FUNC7(map->pmap, va, VM_PROT_READ, 1))
		goto out;

	error = FUNC12(map, va, VM_PROT_READ | VM_PROT_EXECUTE,
	    VM_FAULT_NORMAL, &signo, &ucode);
	if (FUNC3(error == KERN_SUCCESS))
		goto out;

do_trapsignal:
	FUNC4(td, signo, ucode);

out:
	FUNC11(td, tf);

}