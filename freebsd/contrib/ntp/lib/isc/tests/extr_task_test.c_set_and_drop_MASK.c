#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_4__ {scalar_t__ ev_arg; } ;
typedef  TYPE_1__ isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  counter ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_taskmgrmode_normal ; 
 int /*<<< orphan*/  set_lock ; 
 int /*<<< orphan*/  taskmgr ; 

__attribute__((used)) static void
FUNC6(isc_task_t *task, isc_event_t *event) {
	int *value = (int *) event->ev_arg;

	FUNC2(task);

	FUNC3(&event);
	FUNC0(&set_lock);
	*value = (int) FUNC4(taskmgr);
	counter++;
	FUNC1(&set_lock);
	FUNC5(taskmgr, isc_taskmgrmode_normal);
}