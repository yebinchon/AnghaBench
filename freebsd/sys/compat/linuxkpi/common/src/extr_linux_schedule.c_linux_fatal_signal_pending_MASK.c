#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_proc; int /*<<< orphan*/  td_siglist; } ;
struct task_struct {struct thread* task_thread; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_siglist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGKILL ; 

bool
FUNC3(struct task_struct *task)
{
	struct thread *td;
	bool ret;

	td = task->task_thread;
	FUNC0(td->td_proc);
	ret = FUNC2(td->td_siglist, SIGKILL) ||
	    FUNC2(td->td_proc->p_siglist, SIGKILL);
	FUNC1(td->td_proc);
	return (ret);
}