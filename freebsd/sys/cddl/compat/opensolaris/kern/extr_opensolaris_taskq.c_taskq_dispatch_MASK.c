#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int /*<<< orphan*/  taskqid_t ;
struct TYPE_6__ {int /*<<< orphan*/  tq_queue; } ;
typedef  TYPE_1__ taskq_t ;
struct TYPE_7__ {int /*<<< orphan*/  tqent_task; void* tqent_arg; int /*<<< orphan*/  tqent_func; } ;
typedef  TYPE_2__ taskq_ent_t ;
typedef  int /*<<< orphan*/  task_func_t ;

/* Variables and functions */
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int TQ_FRONT ; 
 int TQ_NOQUEUE ; 
 int TQ_SLEEP ; 
 int /*<<< orphan*/  taskq_run ; 
 int /*<<< orphan*/  taskq_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 

taskqid_t
FUNC3(taskq_t *tq, task_func_t func, void *arg, uint_t flags)
{
	taskq_ent_t *task;
	int mflag, prio;

	if ((flags & (TQ_SLEEP | TQ_NOQUEUE)) == TQ_SLEEP)
		mflag = M_WAITOK;
	else
		mflag = M_NOWAIT;
	/*
	 * If TQ_FRONT is given, we want higher priority for this task, so it
	 * can go at the front of the queue.
	 */
	prio = !!(flags & TQ_FRONT);

	task = FUNC2(taskq_zone, mflag);
	if (task == NULL)
		return (0);

	task->tqent_func = func;
	task->tqent_arg = arg;

	FUNC0(&task->tqent_task, prio, taskq_run, task);
	FUNC1(tq->tq_queue, &task->tqent_task);

	return ((taskqid_t)(void *)task);
}