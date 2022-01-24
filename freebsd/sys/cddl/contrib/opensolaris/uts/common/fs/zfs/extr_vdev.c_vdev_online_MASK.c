#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ vdev_state; int vdev_checkremove; int vdev_forcefault; int vdev_expanding; scalar_t__ vdev_initialize_state; int /*<<< orphan*/  vdev_initialize_lock; int /*<<< orphan*/ * vdev_initialize_thread; scalar_t__ vdev_aux; int /*<<< orphan*/  vdev_unspare; struct TYPE_17__** vdev_child; struct TYPE_17__* vdev_parent; TYPE_4__* vdev_ops; void* vdev_tmpoffline; void* vdev_offline; struct TYPE_17__* vdev_top; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ vdev_state_t ;
typedef  int uint64_t ;
struct TYPE_18__ {scalar_t__ spa_autoexpand; TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int boolean_t ;
struct TYPE_19__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 void* B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_ONLINE ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int /*<<< orphan*/  SPA_ASYNC_CONFIG_UPDATE ; 
 scalar_t__ VDEV_INITIALIZE_ACTIVE ; 
 scalar_t__ VDEV_STATE_DEGRADED ; 
 int ZFS_ONLINE_CHECKREMOVE ; 
 int ZFS_ONLINE_EXPAND ; 
 int ZFS_ONLINE_FORCEFAULT ; 
 int ZFS_ONLINE_UNSPARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_4__ vdev_spare_ops ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

int
FUNC11(spa_t *spa, uint64_t guid, uint64_t flags, vdev_state_t *newstate)
{
	vdev_t *vd, *tvd, *pvd, *rvd = spa->spa_root_vdev;
	boolean_t wasoffline;
	vdev_state_t oldstate;

	FUNC5(spa, SCL_NONE);

	if ((vd = FUNC4(spa, guid, B_TRUE)) == NULL)
		return (FUNC6(spa, NULL, ENODEV));

	if (!vd->vdev_ops->vdev_op_leaf)
		return (FUNC6(spa, NULL, ENOTSUP));

	wasoffline = (vd->vdev_offline || vd->vdev_tmpoffline);
	oldstate = vd->vdev_state;

	tvd = vd->vdev_top;
	vd->vdev_offline = B_FALSE;
	vd->vdev_tmpoffline = B_FALSE;
	vd->vdev_checkremove = !!(flags & ZFS_ONLINE_CHECKREMOVE);
	vd->vdev_forcefault = !!(flags & ZFS_ONLINE_FORCEFAULT);

	/* XXX - L2ARC 1.0 does not support expansion */
	if (!vd->vdev_aux) {
		for (pvd = vd; pvd != rvd; pvd = pvd->vdev_parent)
			pvd->vdev_expanding = !!(flags & ZFS_ONLINE_EXPAND);
	}

	FUNC9(tvd);
	vd->vdev_checkremove = vd->vdev_forcefault = B_FALSE;

	if (!vd->vdev_aux) {
		for (pvd = vd; pvd != rvd; pvd = pvd->vdev_parent)
			pvd->vdev_expanding = B_FALSE;
	}

	if (newstate)
		*newstate = vd->vdev_state;
	if ((flags & ZFS_ONLINE_UNSPARE) &&
	    !FUNC8(vd) && vd->vdev_parent &&
	    vd->vdev_parent->vdev_ops == &vdev_spare_ops &&
	    vd->vdev_parent->vdev_child[0] == vd)
		vd->vdev_unspare = B_TRUE;

	if ((flags & ZFS_ONLINE_EXPAND) || spa->spa_autoexpand) {

		/* XXX - L2ARC 1.0 does not support expansion */
		if (vd->vdev_aux)
			return (FUNC6(spa, vd, ENOTSUP));
		FUNC2(spa, SPA_ASYNC_CONFIG_UPDATE);
	}

	/* Restart initializing if necessary */
	FUNC0(&vd->vdev_initialize_lock);
	if (FUNC10(vd) &&
	    vd->vdev_initialize_thread == NULL &&
	    vd->vdev_initialize_state == VDEV_INITIALIZE_ACTIVE) {
		(void) FUNC7(vd);
	}
	FUNC1(&vd->vdev_initialize_lock);

	if (wasoffline ||
	    (oldstate < VDEV_STATE_DEGRADED &&
	    vd->vdev_state >= VDEV_STATE_DEGRADED))
		FUNC3(spa, vd, NULL, ESC_ZFS_VDEV_ONLINE);

	return (FUNC6(spa, vd, 0));
}