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
struct TYPE_4__ {scalar_t__ v_count; int /*<<< orphan*/  v_usecount; } ;
typedef  TYPE_1__ vnode_t ;
typedef  int /*<<< orphan*/  taskq_t ;
typedef  int /*<<< orphan*/  task_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ vrele ; 

void
FUNC3(vnode_t *vp, taskq_t *taskq)
{
	FUNC0(vp->v_count > 0);
	if (FUNC1(&vp->v_usecount)) {
		return;
	}
	FUNC0(FUNC2((taskq_t *)taskq,
	    (task_func_t *)vrele, vp, TQ_SLEEP) != 0);
}