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
struct thread {struct task_struct* td_lkpi_task; } ;
struct task_struct {void* task_data; int /*<<< orphan*/ * task_fn; } ;
typedef  int /*<<< orphan*/  linux_task_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRQ_BORING ; 
 int /*<<< orphan*/  SWI_NET ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

struct task_struct *
FUNC6(struct thread *td, linux_task_fn_t *task_fn, void *arg)
{
	struct task_struct *task;

	FUNC1(td);

	task = td->td_lkpi_task;
	task->task_fn = task_fn;
	task->task_data = arg;

	FUNC4(td);
	/* make sure the scheduler priority is raised */
	FUNC3(td, FUNC0(SWI_NET));
	/* put thread into run-queue */
	FUNC2(td, SRQ_BORING);
	FUNC5(td);

	return (task);
}