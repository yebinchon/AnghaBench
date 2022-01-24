#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ vs_alloc; } ;
struct TYPE_13__ {int vdev_islog; char* vdev_path; scalar_t__ vdev_top_zap; scalar_t__ vdev_leaf_zap; int /*<<< orphan*/  vdev_config_dirty_node; int /*<<< orphan*/  vdev_state_dirty_node; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  vdev_removing; TYPE_1__ vdev_stat; struct TYPE_13__* vdev_top; int /*<<< orphan*/ * vdev_spa; int /*<<< orphan*/ * vdev_mg; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sysevent_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_REMOVE_DEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 scalar_t__ TXG_CONCURRENT_STATES ; 
 scalar_t__ TXG_DEFER_SIZE ; 
 int /*<<< orphan*/  VDD_DTL ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_CANCELED ; 
 int /*<<< orphan*/  VDEV_LABEL_REMOVE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC21(vdev_t *vd, uint64_t *txg)
{
	metaslab_group_t *mg = vd->vdev_mg;
	spa_t *spa = vd->vdev_spa;
	int error = 0;

	FUNC0(vd->vdev_islog);
	FUNC0(vd == vd->vdev_top);

	/*
	 * Stop allocating from this vdev.
	 */
	FUNC5(mg);

	/*
	 * Wait for the youngest allocations and frees to sync,
	 * and then wait for the deferral of those frees to finish.
	 */
	FUNC13(spa, NULL,
	    *txg + TXG_CONCURRENT_STATES + TXG_DEFER_SIZE, 0, FTAG);

	/*
	 * Evacuate the device.  We don't hold the config lock as writer
	 * since we need to do I/O but we do keep the
	 * spa_namespace_lock held.  Once this completes the device
	 * should no longer have any blocks allocated on it.
	 */
	if (vd->vdev_islog) {
		if (vd->vdev_stat.vs_alloc != 0)
			error = FUNC11(spa);
	}

	*txg = FUNC12(spa);

	if (error != 0) {
		FUNC4(mg);
		return (error);
	}
	FUNC1(vd->vdev_stat.vs_alloc);

	/*
	 * The evacuation succeeded.  Remove any remaining MOS metadata
	 * associated with this vdev, and wait for these changes to sync.
	 */
	vd->vdev_removing = B_TRUE;

	FUNC16(vd, VDD_DTL, *txg);
	FUNC15(vd);

	FUNC9(spa, "vdev remove", NULL,
	    "%s vdev %llu (log) %s", FUNC10(spa), vd->vdev_id,
	    (vd->vdev_path != NULL) ? vd->vdev_path : "-");

	/* Make sure these changes are sync'ed */
	FUNC13(spa, NULL, *txg, 0, FTAG);

	/* Stop initializing */
	(void) FUNC17(vd, VDEV_INITIALIZE_CANCELED);

	*txg = FUNC12(spa);

	sysevent_t *ev = FUNC7(spa, vd, NULL,
	    ESC_ZFS_VDEV_REMOVE_DEV);
	FUNC0(FUNC2(&spa_namespace_lock));
	FUNC0(FUNC6(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	/* The top ZAP should have been destroyed by vdev_remove_empty. */
	FUNC1(vd->vdev_top_zap);
	/* The leaf ZAP should have been destroyed by vdev_dtl_sync. */
	FUNC1(vd->vdev_leaf_zap);

	(void) FUNC18(vd, 0, VDEV_LABEL_REMOVE);

	if (FUNC3(&vd->vdev_state_dirty_node))
		FUNC20(vd);
	if (FUNC3(&vd->vdev_config_dirty_node))
		FUNC14(vd);

	/*
	 * Clean up the vdev namespace.
	 */
	FUNC19(vd);

	if (ev != NULL)
		FUNC8(ev);

	return (0);
}