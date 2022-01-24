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
struct task_struct {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TASK_WAKING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int FUNC1 (struct task_struct*,struct task_struct*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int ticks ; 

int
FUNC5(int timeout)
{
	struct task_struct *task;
	int ret;
	int state;
	int remainder;

	task = current;

	/* range check timeout */
	if (timeout < 1)
		timeout = 1;
	else if (timeout == MAX_SCHEDULE_TIMEOUT)
		timeout = 0;

	remainder = ticks + timeout;

	FUNC3(task);
	state = FUNC0(&task->state);
	if (state != TASK_WAKING) {
		ret = FUNC1(task, task, "sched", timeout,
		    state);
	} else {
		FUNC4(task);
		ret = 0;
	}
	FUNC2(task, TASK_RUNNING);

	if (timeout == 0)
		return (MAX_SCHEDULE_TIMEOUT);

	/* range check return value */
	remainder -= ticks;

	/* range check return value */
	if (ret == -ERESTARTSYS && remainder < 1)
		remainder = 1;
	else if (remainder < 0)
		remainder = 0;
	else if (remainder > timeout)
		remainder = timeout;
	return (remainder);
}