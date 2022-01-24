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
struct TYPE_4__ {int flags; int /*<<< orphan*/  task_list; int /*<<< orphan*/  func; int /*<<< orphan*/  private; } ;
typedef  TYPE_1__ wait_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  autoremove_wake_function ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(wait_queue_t *wq, int flags)
{

	FUNC1(wq, 0, sizeof(*wq));
	wq->flags = flags;
	wq->private = current;
	wq->func = autoremove_wake_function;
	FUNC0(&wq->task_list);
}