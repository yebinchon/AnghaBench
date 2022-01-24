#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mctx; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_available; int /*<<< orphan*/  tasks; } ;
typedef  TYPE_2__ isc__taskmgr_t ;
struct TYPE_8__ {scalar_t__ magic; scalar_t__ impmagic; } ;
struct TYPE_10__ {scalar_t__ references; scalar_t__ state; TYPE_1__ common; int /*<<< orphan*/  lock; int /*<<< orphan*/  on_shutdown; int /*<<< orphan*/  events; TYPE_2__* manager; } ;
typedef  TYPE_3__ isc__task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ task_state_done ; 

__attribute__((used)) static void
FUNC10(isc__task_t *task) {
	isc__taskmgr_t *manager = task->manager;

	FUNC5(FUNC2(task->events));
	FUNC5(FUNC2(task->on_shutdown));
	FUNC5(task->references == 0);
	FUNC5(task->state == task_state_done);

	FUNC8("task_finished");

	FUNC4(&manager->lock);
	FUNC6(manager->tasks, task, link);
#ifdef USE_WORKER_THREADS
	if (FINISHED(manager)) {
		/*
		 * All tasks have completed and the
		 * task manager is exiting.  Wake up
		 * any idle worker threads so they
		 * can exit.
		 */
		BROADCAST(&manager->work_available);
	}
#endif /* USE_WORKER_THREADS */
	FUNC7(&manager->lock);

	FUNC1(&task->lock);
	task->common.impmagic = 0;
	task->common.magic = 0;
	FUNC9(manager->mctx, task, sizeof(*task));
}