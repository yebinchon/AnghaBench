#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct task_struct {TYPE_1__* task_thread; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  td_proc; } ;

/* Variables and functions */
 int MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TASK_WAKING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int FUNC3 (struct task_struct*,struct task_struct*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(wait_queue_head_t *wqh, wait_queue_t *wq, int timeout,
    unsigned int state, spinlock_t *lock)
{
	struct task_struct *task;
	int ret;

	if (lock != NULL)
		FUNC7(lock);

	/* range check timeout */
	if (timeout < 1)
		timeout = 1;
	else if (timeout == MAX_SCHEDULE_TIMEOUT)
		timeout = 0;

	task = current;

	/*
	 * Our wait queue entry is on the stack - make sure it doesn't
	 * get swapped out while we sleep.
	 */
	FUNC0(task->task_thread->td_proc);
	FUNC4(task);
	if (FUNC2(&task->state) != TASK_WAKING) {
		ret = FUNC3(task, task, "wevent", timeout,
		    state);
	} else {
		FUNC5(task);
		ret = 0;
	}
	FUNC1(task->task_thread->td_proc);

	if (lock != NULL)
		FUNC6(lock);
	return (ret);
}