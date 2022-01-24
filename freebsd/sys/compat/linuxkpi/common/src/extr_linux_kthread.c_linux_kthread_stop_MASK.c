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
struct task_struct {int task_ret; int /*<<< orphan*/  exited; int /*<<< orphan*/  kthread_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KTHREAD_SHOULD_STOP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

int
FUNC5(struct task_struct *task)
{
	int retval;

	/*
	 * Assume task is still alive else caller should not call
	 * kthread_stop():
	 */
	FUNC0(KTHREAD_SHOULD_STOP_MASK, &task->kthread_flags);
	FUNC1(task);
	FUNC4(task);
	FUNC3(&task->exited);

	/*
	 * Get return code and free task structure:
	 */
	retval = task->task_ret;
	FUNC2(task);

	return (retval);
}