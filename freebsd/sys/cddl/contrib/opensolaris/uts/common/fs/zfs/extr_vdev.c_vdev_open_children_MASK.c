#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vdev_children; TYPE_4__** vdev_child; scalar_t__ vdev_nonrot; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  taskq_t ;
struct TYPE_7__ {scalar_t__ vdev_nonrot; int /*<<< orphan*/  vdev_open_error; } ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  TASKQ_PREPOPULATE ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  minclsyspri ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  vdev_open_child ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void
FUNC6(vdev_t *vd)
{
	taskq_t *tq;
	int children = vd->vdev_children;

	vd->vdev_nonrot = B_TRUE;

	/*
	 * in order to handle pools on top of zvols, do the opens
	 * in a single thread so that the same thread holds the
	 * spa_namespace_lock
	 */
	if (B_TRUE || FUNC5(vd)) {
		for (int c = 0; c < children; c++) {
			vd->vdev_child[c]->vdev_open_error =
			    FUNC4(vd->vdev_child[c]);
			vd->vdev_nonrot &= vd->vdev_child[c]->vdev_nonrot;
		}
		return;
	}
	tq = FUNC1("vdev_open", children, minclsyspri,
	    children, children, TASKQ_PREPOPULATE);

	for (int c = 0; c < children; c++)
		FUNC0(FUNC3(tq, vdev_open_child, vd->vdev_child[c],
		    TQ_SLEEP) != 0);

	FUNC2(tq);

	for (int c = 0; c < children; c++)
		vd->vdev_nonrot &= vd->vdev_child[c]->vdev_nonrot;
}