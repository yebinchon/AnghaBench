#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tasklet_func_t ;
struct TYPE_2__ {int /*<<< orphan*/ * tqe_next; int /*<<< orphan*/ * tqe_prev; } ;
struct tasklet_struct {unsigned long data; int /*<<< orphan*/  count; int /*<<< orphan*/  tasklet_state; int /*<<< orphan*/ * func; TYPE_1__ entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASKLET_ST_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct tasklet_struct *ts,
    tasklet_func_t *func, unsigned long data)
{
	ts->entry.tqe_prev = NULL;
	ts->entry.tqe_next = NULL;
	ts->func = func;
	ts->data = data;
	FUNC1(&ts->tasklet_state, TASKLET_ST_IDLE);
	FUNC0(&ts->count, 0);
}