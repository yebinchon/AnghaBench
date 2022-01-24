#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ vdev_leaf_zap; size_t vdev_initialize_state; size_t vdev_children; struct TYPE_7__** vdev_child; int /*<<< orphan*/  vdev_initialize_lock; scalar_t__ vdev_offline; scalar_t__ vdev_initialize_action_time; TYPE_6__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  timestamp ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  initialize_state ;
struct TYPE_8__ {int /*<<< orphan*/  spa_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 size_t VDEV_INITIALIZE_ACTIVE ; 
 size_t VDEV_INITIALIZE_NONE ; 
 size_t VDEV_INITIALIZE_SUSPENDED ; 
 int /*<<< orphan*/  VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME ; 
 int /*<<< orphan*/  VDEV_LEAF_ZAP_INITIALIZE_STATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,size_t*) ; 

void
FUNC9(vdev_t *vd)
{
	FUNC0(FUNC1(&spa_namespace_lock));
	FUNC0(!FUNC4(vd->vdev_spa, SCL_ALL, RW_WRITER));

	if (vd->vdev_leaf_zap != 0) {
		FUNC2(&vd->vdev_initialize_lock);
		uint64_t initialize_state = VDEV_INITIALIZE_NONE;
		int err = FUNC8(vd->vdev_spa->spa_meta_objset,
		    vd->vdev_leaf_zap, VDEV_LEAF_ZAP_INITIALIZE_STATE,
		    sizeof (initialize_state), 1, &initialize_state);
		FUNC0(err == 0 || err == ENOENT);
		vd->vdev_initialize_state = initialize_state;

		uint64_t timestamp = 0;
		err = FUNC8(vd->vdev_spa->spa_meta_objset,
		    vd->vdev_leaf_zap, VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME,
		    sizeof (timestamp), 1, &timestamp);
		FUNC0(err == 0 || err == ENOENT);
		vd->vdev_initialize_action_time = (time_t)timestamp;

		if (vd->vdev_initialize_state == VDEV_INITIALIZE_SUSPENDED ||
		    vd->vdev_offline) {
			/* load progress for reporting, but don't resume */
			FUNC6(vd);
		} else if (vd->vdev_initialize_state ==
		    VDEV_INITIALIZE_ACTIVE && FUNC7(vd)) {
			FUNC5(vd);
		}

		FUNC3(&vd->vdev_initialize_lock);
	}

	for (uint64_t i = 0; i < vd->vdev_children; i++) {
		FUNC9(vd->vdev_child[i]);
	}
}