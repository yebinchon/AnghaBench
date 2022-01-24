#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  scalar_t__ isc_boolean_t ;
struct TYPE_7__ {scalar_t__ mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_available; } ;
typedef  TYPE_1__ isc__taskmgr_t ;
struct TYPE_8__ {scalar_t__ state; TYPE_1__* manager; } ;
typedef  TYPE_2__ isc__task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ isc_taskmgrmode_normal ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ task_state_ready ; 

__attribute__((used)) static inline void
FUNC8(isc__task_t *task) {
	isc__taskmgr_t *manager = task->manager;
#ifdef USE_WORKER_THREADS
	isc_boolean_t has_privilege = isc__task_privilege((isc_task_t *) task);
#endif /* USE_WORKER_THREADS */

	FUNC1(FUNC4(manager));
	FUNC1(task->state == task_state_ready);

	FUNC5("task_ready");

	FUNC0(&manager->lock);
	FUNC7(manager, task);
#ifdef USE_WORKER_THREADS
	if (manager->mode == isc_taskmgrmode_normal || has_privilege)
		SIGNAL(&manager->work_available);
#endif /* USE_WORKER_THREADS */
	FUNC3(&manager->lock);
}