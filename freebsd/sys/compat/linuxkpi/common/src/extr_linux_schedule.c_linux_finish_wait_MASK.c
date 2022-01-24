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
struct TYPE_7__ {int /*<<< orphan*/  task_list; } ;
typedef  TYPE_1__ wait_queue_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ wait_queue_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(wait_queue_head_t *wqh, wait_queue_t *wq)
{

	FUNC4(&wqh->lock);
	FUNC3(current, TASK_RUNNING);
	if (!FUNC2(&wq->task_list)) {
		FUNC1(wqh, wq);
		FUNC0(&wq->task_list);
	}
	FUNC5(&wqh->lock);
}