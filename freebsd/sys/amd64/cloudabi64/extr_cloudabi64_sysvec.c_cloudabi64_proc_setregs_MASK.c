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
struct trapframe {scalar_t__ tf_rdi; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  cloudabi64_tcb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,struct image_params*,unsigned long) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void
FUNC4(struct thread *td, struct image_params *imgp,
    unsigned long stack)
{
	struct trapframe *regs;

	FUNC2(td, imgp, stack);

	/*
	 * The stack now contains a pointer to the TCB, the TCB itself,
	 * and the auxiliary vector. Let %rdx point to the auxiliary
	 * vector, and set %fs base to the address of the TCB.
	 */
	regs = td->td_frame;
	regs->tf_rdi = stack + sizeof(register_t) +
	    FUNC3(sizeof(cloudabi64_tcb_t), sizeof(register_t));
	(void)FUNC1(td, FUNC0(stack));
}