#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ vdev_id; int vdev_children; scalar_t__ vdev_resilver_txg; TYPE_1__** vdev_child; int /*<<< orphan*/ * vdev_ops; scalar_t__ vdev_guid; struct TYPE_11__* vdev_parent; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_10__ {scalar_t__ vdev_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  vdev_replacing_ops ; 
 int /*<<< orphan*/  vdev_spare_ops ; 

__attribute__((used)) static void
FUNC6(spa_t *spa)
{
	vdev_t *vd, *pvd, *ppvd;
	uint64_t guid, sguid, pguid, ppguid;

	FUNC1(spa, SCL_ALL, FTAG, RW_WRITER);

	while ((vd = FUNC4(spa->spa_root_vdev)) != NULL) {
		pvd = vd->vdev_parent;
		ppvd = pvd->vdev_parent;
		guid = vd->vdev_guid;
		pguid = pvd->vdev_guid;
		ppguid = ppvd->vdev_guid;
		sguid = 0;
		/*
		 * If we have just finished replacing a hot spared device, then
		 * we need to detach the parent's first child (the original hot
		 * spare) as well.
		 */
		if (ppvd->vdev_ops == &vdev_spare_ops && pvd->vdev_id == 0 &&
		    ppvd->vdev_children == 2) {
			FUNC0(pvd->vdev_ops == &vdev_replacing_ops);
			sguid = ppvd->vdev_child[1]->vdev_guid;
		}
		FUNC0(vd->vdev_resilver_txg == 0 || !FUNC5(vd));

		FUNC2(spa, SCL_ALL, FTAG);
		if (FUNC3(spa, guid, pguid, B_TRUE) != 0)
			return;
		if (sguid && FUNC3(spa, sguid, ppguid, B_TRUE) != 0)
			return;
		FUNC1(spa, SCL_ALL, FTAG, RW_WRITER);
	}

	FUNC2(spa, SCL_ALL, FTAG);
}