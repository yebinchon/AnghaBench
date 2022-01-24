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
 int KTHREAD_SHOULD_PARK_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 

bool
FUNC1(void)
{
	struct task_struct *task;

	task = current;
	return (FUNC0(&task->kthread_flags) & KTHREAD_SHOULD_PARK_MASK);
}