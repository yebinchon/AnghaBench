#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int tf_rflags; scalar_t__ tf_rip; } ;
struct thread {int /*<<< orphan*/  td_errno; struct trapframe* td_frame; } ;
typedef  int register_t ;
struct TYPE_4__ {void* ksi_addr; int /*<<< orphan*/  ksi_code; int /*<<< orphan*/  ksi_signo; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int PSL_T ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,TYPE_1__*) ; 

void
FUNC5(struct trapframe *frame)
{
	struct thread *td;
	register_t orig_tf_rflags;
	ksiginfo_t ksi;

	orig_tf_rflags = frame->tf_rflags;
	td = curthread;
	td->td_frame = frame;

	FUNC2(td);

	/*
	 * Traced syscall.
	 */
	if (orig_tf_rflags & PSL_T) {
		frame->tf_rflags &= ~PSL_T;
		FUNC1(&ksi);
		ksi.ksi_signo = SIGTRAP;
		ksi.ksi_code = TRAP_TRACE;
		ksi.ksi_addr = (void *)frame->tf_rip;
		FUNC4(td, &ksi);
	}

	FUNC3(td);
	FUNC0(td->td_errno);
}