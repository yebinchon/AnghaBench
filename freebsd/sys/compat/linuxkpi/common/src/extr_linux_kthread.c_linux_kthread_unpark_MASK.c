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
struct task_struct {int /*<<< orphan*/  kthread_flags; } ;

/* Variables and functions */
 int KTHREAD_IS_PARKED_MASK ; 
 int /*<<< orphan*/  KTHREAD_SHOULD_PARK_MASK ; 
 int /*<<< orphan*/  TASK_PARKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct task_struct *task)
{

	FUNC0(KTHREAD_SHOULD_PARK_MASK, &task->kthread_flags);
	if ((FUNC1(KTHREAD_IS_PARKED_MASK, &task->kthread_flags) &
	    KTHREAD_IS_PARKED_MASK) != 0)
		FUNC2(task, TASK_PARKED);
}