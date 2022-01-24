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
struct task_struct {int /*<<< orphan*/  kthread_flags; int /*<<< orphan*/  parked; } ;

/* Variables and functions */
 int KTHREAD_IS_PARKED_MASK ; 
 int TASK_PARKED ; 
 int TASK_RUNNING ; 
 int TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int) ; 

void
FUNC6(void)
{
	struct task_struct *task;

	task = current;
	FUNC5(task, TASK_PARKED | TASK_UNINTERRUPTIBLE);
	while (FUNC3()) {
		while ((FUNC1(KTHREAD_IS_PARKED_MASK,
		    &task->kthread_flags) & KTHREAD_IS_PARKED_MASK) == 0)
			FUNC2(&task->parked);
		FUNC4();
		FUNC5(task, TASK_PARKED | TASK_UNINTERRUPTIBLE);
	}
	FUNC0(KTHREAD_IS_PARKED_MASK, &task->kthread_flags);
	FUNC5(task, TASK_RUNNING);
}