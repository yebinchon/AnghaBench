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
struct trapframe {int /*<<< orphan*/  tf_spsr; scalar_t__* tf_x; } ;
struct thread {int td_pflags; int /*<<< orphan*/  td_tid; struct trapframe* td_frame; } ;
typedef  int /*<<< orphan*/  retval ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOUDABI_PROCESS_CHILD ; 
 int /*<<< orphan*/  PSR_AARCH32 ; 
 int TDP_FORKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static void
FUNC1(struct thread *td)
{
	struct trapframe *frame = td->td_frame;
	register_t retval[2];

	/* Return values for processes returning from fork. */
	if ((td->td_pflags & TDP_FORKING) != 0) {
		retval[0] = CLOUDABI_PROCESS_CHILD;
		retval[1] = td->td_tid;
		FUNC0(retval, (void *)frame->tf_x[2], sizeof(retval));
	}
	frame->tf_spsr |= PSR_AARCH32;
}