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
typedef  int /*<<< orphan*/  u_long ;
struct trapframe {int /*<<< orphan*/  tf_elr; int /*<<< orphan*/  tf_lr; int /*<<< orphan*/  tf_sp; int /*<<< orphan*/ * tf_x; } ;
struct thread {struct trapframe* td_frame; } ;
struct image_params {int /*<<< orphan*/  entry_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trapframe*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct thread *td, struct image_params *imgp, u_long stack)
{
	struct trapframe *tf = td->td_frame;

	FUNC1(tf, 0, sizeof(struct trapframe));

	tf->tf_x[0] = stack;
	tf->tf_sp = FUNC0(stack);
	tf->tf_lr = imgp->entry_addr;
	tf->tf_elr = imgp->entry_addr;
}