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
struct trapframe {int /*<<< orphan*/  tf_rcx; int /*<<< orphan*/  tf_r10; int /*<<< orphan*/  tf_rdx; } ;
struct thread {int /*<<< orphan*/  td_pcb; int /*<<< orphan*/ * td_retval; struct trapframe* td_frame; } ;

/* Variables and functions */
 int EJUSTRETURN ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct thread *td, int error)
{
	struct trapframe *frame = td->td_frame;

	/*
	 * On Linux only %rcx and %r11 values are not preserved across
	 * the syscall.  So, do not clobber %rdx and %r10.
	 */
	td->td_retval[1] = frame->tf_rdx;
	if (error != EJUSTRETURN)
		frame->tf_r10 = frame->tf_rcx;

	FUNC0(td, error);

	 /* Restore all registers. */
	FUNC1(td->td_pcb, PCB_FULL_IRET);
}