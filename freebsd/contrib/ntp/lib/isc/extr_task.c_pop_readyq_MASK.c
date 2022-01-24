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
struct TYPE_3__ {scalar_t__ mode; int /*<<< orphan*/  ready_priority_tasks; int /*<<< orphan*/  ready_tasks; } ;
typedef  TYPE_1__ isc__taskmgr_t ;
typedef  int /*<<< orphan*/  isc__task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ isc_taskmgrmode_normal ; 
 int /*<<< orphan*/  ready_link ; 
 int /*<<< orphan*/  ready_priority_link ; 

__attribute__((used)) static inline isc__task_t *
FUNC3(isc__taskmgr_t *manager) {
	isc__task_t *task;

	if (manager->mode == isc_taskmgrmode_normal)
		task = FUNC1(manager->ready_tasks);
	else
		task = FUNC1(manager->ready_priority_tasks);

	if (task != NULL) {
		FUNC0(manager->ready_tasks, task, ready_link);
		if (FUNC2(task, ready_priority_link))
			FUNC0(manager->ready_priority_tasks, task,
				ready_priority_link);
	}

	return (task);
}