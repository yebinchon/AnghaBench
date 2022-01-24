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
struct trapframe {int /*<<< orphan*/  tf_spsr; int /*<<< orphan*/  tf_elr; scalar_t__* tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int /*<<< orphan*/  entry_addr; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  cloudabi32_tcb_t ;

/* Variables and functions */
 int /*<<< orphan*/  PSR_AARCH32 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trapframe*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(struct thread *td, struct image_params *imgp,
    unsigned long stack)
{
	struct trapframe *regs;

	regs = td->td_frame;
	FUNC3(regs, 0, sizeof(*regs));
	regs->tf_x[0] =
	    stack + FUNC4(sizeof(cloudabi32_tcb_t), sizeof(register_t));
	regs->tf_x[13] = FUNC0(stack);
	regs->tf_elr = imgp->entry_addr;
	regs->tf_spsr |= PSR_AARCH32;
	(void)FUNC2(td, FUNC1(stack));
}