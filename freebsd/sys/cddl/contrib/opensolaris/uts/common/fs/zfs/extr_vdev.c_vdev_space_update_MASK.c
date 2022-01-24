#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vs_alloc; int vs_space; int vs_dspace; } ;
struct TYPE_8__ {int vdev_deflate_ratio; scalar_t__ vdev_ms_count; struct TYPE_8__* vdev_parent; int /*<<< orphan*/  vdev_stat_lock; TYPE_1__ vdev_stat; scalar_t__ vdev_isl2cache; struct TYPE_8__* vdev_top; TYPE_4__* vdev_mg; TYPE_3__* vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_9__ {TYPE_2__* spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_10__ {int /*<<< orphan*/ * mg_class; } ;
typedef  TYPE_4__ metaslab_group_t ;
typedef  int /*<<< orphan*/  metaslab_class_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SPA_MINBLOCKSHIFT ; 
 int SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 

void
FUNC5(vdev_t *vd, int64_t alloc_delta, int64_t defer_delta,
    int64_t space_delta)
{
	int64_t dspace_delta = space_delta;
	spa_t *spa = vd->vdev_spa;
	vdev_t *rvd = spa->spa_root_vdev;
	metaslab_group_t *mg = vd->vdev_mg;
	metaslab_class_t *mc = mg ? mg->mg_class : NULL;

	FUNC0(vd == vd->vdev_top);

	/*
	 * Apply the inverse of the psize-to-asize (ie. RAID-Z) space-expansion
	 * factor.  We must calculate this here and not at the root vdev
	 * because the root vdev's psize-to-asize is simply the max of its
	 * childrens', thus not accurate enough for us.
	 */
	FUNC0((dspace_delta & (SPA_MINBLOCKSIZE-1)) == 0);
	FUNC0(vd->vdev_deflate_ratio != 0 || vd->vdev_isl2cache);
	dspace_delta = (dspace_delta >> SPA_MINBLOCKSHIFT) *
	    vd->vdev_deflate_ratio;

	FUNC2(&vd->vdev_stat_lock);
	vd->vdev_stat.vs_alloc += alloc_delta;
	vd->vdev_stat.vs_space += space_delta;
	vd->vdev_stat.vs_dspace += dspace_delta;
	FUNC3(&vd->vdev_stat_lock);

	if (mc == FUNC4(spa)) {
		FUNC2(&rvd->vdev_stat_lock);
		rvd->vdev_stat.vs_alloc += alloc_delta;
		rvd->vdev_stat.vs_space += space_delta;
		rvd->vdev_stat.vs_dspace += dspace_delta;
		FUNC3(&rvd->vdev_stat_lock);
	}

	if (mc != NULL) {
		FUNC0(rvd == vd->vdev_parent);
		FUNC0(vd->vdev_ms_count != 0);

		FUNC1(mc,
		    alloc_delta, defer_delta, space_delta, dspace_delta);
	}
}