#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int vdev_children; int /*<<< orphan*/  vdev_splitting; struct TYPE_8__** vdev_child; struct TYPE_8__* vdev_parent; } ;
typedef  TYPE_1__ vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(vdev_t *vd)
{
	vdev_t *cvd, *pvd = vd->vdev_parent;

	FUNC2(pvd, vd);
	FUNC0(pvd);

	cvd = pvd->vdev_child[0];
	if (pvd->vdev_children == 1) {
		FUNC3(cvd);
		cvd->vdev_splitting = B_TRUE;
	}
	FUNC1(cvd);
}