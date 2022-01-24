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
struct trapframe {int /*<<< orphan*/  tf_rax; scalar_t__ tf_rcx; scalar_t__ tf_r10; int /*<<< orphan*/  tf_err; int /*<<< orphan*/  tf_rip; } ;
struct thread {int /*<<< orphan*/  td_pcb; int /*<<< orphan*/  td_retval; struct trapframe* td_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOUDABI_EFAULT ; 
#define  EJUSTRETURN 129 
#define  ERESTART 128 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct thread *td, int error)
{
	struct trapframe *frame = td->td_frame;

	switch (error) {
	case 0:
		/*
		 * System call succeeded.
		 *
		 * Simply copy out the 64-bit return values into the
		 * same buffer provided for system call arguments. The
		 * vDSO will copy them to the right spot, truncating
		 * pointers and size_t values to 32 bits.
		 */
		frame->tf_rax = FUNC1(td->td_retval, (void *)frame->tf_rcx,
		    sizeof(td->td_retval)) == 0 ? 0 : CLOUDABI_EFAULT;
		break;
	case ERESTART:
		/* Restart system call. */
		frame->tf_rip -= frame->tf_err;
		frame->tf_r10 = frame->tf_rcx;
		FUNC2(td->td_pcb, PCB_FULL_IRET);
		break;
	case EJUSTRETURN:
		break;
	default:
		/* System call returned an error. */
		frame->tf_rax = FUNC0(error);
		break;
	}
}