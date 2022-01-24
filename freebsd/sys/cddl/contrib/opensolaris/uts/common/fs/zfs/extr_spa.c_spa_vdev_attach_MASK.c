#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
struct TYPE_38__ {int vdev_children; int vdev_isspare; scalar_t__ vdev_asize; scalar_t__ vdev_ashift; char* vdev_path; char* vdev_devid; int vdev_id; struct TYPE_38__* vdev_parent; struct TYPE_38__* vdev_top; int /*<<< orphan*/  vdev_crtxg; TYPE_2__* vdev_ops; scalar_t__ vdev_resilver_txg; int /*<<< orphan*/  vdev_guid; scalar_t__ vdev_islog; struct TYPE_38__** vdev_child; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_39__ {int /*<<< orphan*/  vdev_op_leaf; } ;
typedef  TYPE_2__ vdev_ops_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_40__ {scalar_t__ spa_bootfs; int /*<<< orphan*/  spa_dsl_pool; int /*<<< orphan*/ * spa_vdev_removal; TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DTL_MISSING ; 
 int EBUSY ; 
 int EDOM ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOTSUP ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  ESC_ZFS_BOOTFS_VDEV_ATTACH ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_ATTACH ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_SPARE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 scalar_t__ SPA_VERSION_MULTI_REPLACE ; 
 scalar_t__ TXG_CONCURRENT_STATES ; 
 scalar_t__ TXG_INITIAL ; 
 int /*<<< orphan*/  VDD_DTL ; 
 int /*<<< orphan*/  VDEV_ALLOC_ATTACH ; 
 int ZFS_ERR_CHECKPOINT_EXISTS ; 
 int ZFS_ERR_DISCARDING_CHECKPOINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 
 TYPE_1__* FUNC10 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_3__*,TYPE_1__*,scalar_t__,int) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC22 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int FUNC24 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC27 (TYPE_1__*) ; 
 TYPE_2__ vdev_mirror_ops ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_2__ vdev_replacing_ops ; 
 TYPE_2__ vdev_root_ops ; 
 TYPE_2__ vdev_spare_ops ; 

int
FUNC29(spa_t *spa, uint64_t guid, nvlist_t *nvroot, int replacing)
{
	uint64_t txg, dtl_max_txg;
	vdev_t *rvd = spa->spa_root_vdev;
	vdev_t *oldvd, *newvd, *newrootvd, *pvd, *tvd;
	vdev_ops_t *pvops;
	char *oldvdpath, *newvdpath;
	int newvd_isspare;
	int error;

	FUNC0(FUNC17(spa));

	txg = FUNC14(spa);

	oldvd = FUNC10(spa, guid, B_FALSE);

	FUNC0(FUNC1(&spa_namespace_lock));
	if (FUNC6(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
		error = (FUNC7(spa)) ?
		    ZFS_ERR_CHECKPOINT_EXISTS : ZFS_ERR_DISCARDING_CHECKPOINT;
		return (FUNC15(spa, NULL, txg, error));
	}

	if (spa->spa_vdev_removal != NULL)
		return (FUNC15(spa, NULL, txg, EBUSY));

	if (oldvd == NULL)
		return (FUNC15(spa, NULL, txg, ENODEV));

	if (!oldvd->vdev_ops->vdev_op_leaf)
		return (FUNC15(spa, NULL, txg, ENOTSUP));

	pvd = oldvd->vdev_parent;

	if ((error = FUNC4(spa, &newrootvd, nvroot, NULL, 0,
	    VDEV_ALLOC_ATTACH)) != 0)
		return (FUNC15(spa, NULL, txg, EINVAL));

	if (newrootvd->vdev_children != 1)
		return (FUNC15(spa, newrootvd, txg, EINVAL));

	newvd = newrootvd->vdev_child[0];

	if (!newvd->vdev_ops->vdev_op_leaf)
		return (FUNC15(spa, newrootvd, txg, EINVAL));

	if ((error = FUNC24(newrootvd, txg, replacing)) != 0)
		return (FUNC15(spa, newrootvd, txg, error));

	/*
	 * Spares can't replace logs
	 */
	if (oldvd->vdev_top->vdev_islog && newvd->vdev_isspare)
		return (FUNC15(spa, newrootvd, txg, ENOTSUP));

	if (!replacing) {
		/*
		 * For attach, the only allowable parent is a mirror or the root
		 * vdev.
		 */
		if (pvd->vdev_ops != &vdev_mirror_ops &&
		    pvd->vdev_ops != &vdev_root_ops)
			return (FUNC15(spa, newrootvd, txg, ENOTSUP));

		pvops = &vdev_mirror_ops;
	} else {
		/*
		 * Active hot spares can only be replaced by inactive hot
		 * spares.
		 */
		if (pvd->vdev_ops == &vdev_spare_ops &&
		    oldvd->vdev_isspare &&
		    !FUNC8(spa, newvd->vdev_guid))
			return (FUNC15(spa, newrootvd, txg, ENOTSUP));

		/*
		 * If the source is a hot spare, and the parent isn't already a
		 * spare, then we want to create a new hot spare.  Otherwise, we
		 * want to create a replacing vdev.  The user is not allowed to
		 * attach to a spared vdev child unless the 'isspare' state is
		 * the same (spare replaces spare, non-spare replaces
		 * non-spare).
		 */
		if (pvd->vdev_ops == &vdev_replacing_ops &&
		    FUNC16(spa) < SPA_VERSION_MULTI_REPLACE) {
			return (FUNC15(spa, newrootvd, txg, ENOTSUP));
		} else if (pvd->vdev_ops == &vdev_spare_ops &&
		    newvd->vdev_isspare != oldvd->vdev_isspare) {
			return (FUNC15(spa, newrootvd, txg, ENOTSUP));
		}

		if (newvd->vdev_isspare)
			pvops = &vdev_spare_ops;
		else
			pvops = &vdev_replacing_ops;
	}

	/*
	 * Make sure the new device is big enough.
	 */
	if (newvd->vdev_asize < FUNC27(oldvd))
		return (FUNC15(spa, newrootvd, txg, EOVERFLOW));

	/*
	 * The new device cannot have a higher alignment requirement
	 * than the top-level vdev.
	 */
	if (newvd->vdev_ashift > oldvd->vdev_top->vdev_ashift)
		return (FUNC15(spa, newrootvd, txg, EDOM));

	/*
	 * If this is an in-place replacement, update oldvd's path and devid
	 * to make it distinguishable from newvd, and unopenable from now on.
	 */
	if (FUNC19(oldvd->vdev_path, newvd->vdev_path) == 0) {
		FUNC13(oldvd->vdev_path);
		oldvd->vdev_path = FUNC3(FUNC20(newvd->vdev_path) + 5,
		    KM_SLEEP);
		(void) FUNC18(oldvd->vdev_path, "%s/%s",
		    newvd->vdev_path, "old");
		if (oldvd->vdev_devid != NULL) {
			FUNC13(oldvd->vdev_devid);
			oldvd->vdev_devid = NULL;
		}
	}

	/* mark the device being resilvered */
	newvd->vdev_resilver_txg = txg;

	/*
	 * If the parent is not a mirror, or if we're replacing, insert the new
	 * mirror/replacing/spare vdev above oldvd.
	 */
	if (pvd->vdev_ops != pvops)
		pvd = FUNC22(oldvd, pvops);

	FUNC0(pvd->vdev_top->vdev_parent == rvd);
	FUNC0(pvd->vdev_ops == pvops);
	FUNC0(oldvd->vdev_parent == pvd);

	/*
	 * Extract the new device from its root and add it to pvd.
	 */
	FUNC28(newrootvd, newvd);
	newvd->vdev_id = pvd->vdev_children;
	newvd->vdev_crtxg = oldvd->vdev_crtxg;
	FUNC21(pvd, newvd);

	tvd = newvd->vdev_top;
	FUNC0(pvd->vdev_top == tvd);
	FUNC0(tvd->vdev_parent == rvd);

	FUNC23(tvd);

	/*
	 * Set newvd's DTL to [TXG_INITIAL, dtl_max_txg) so that we account
	 * for any dmu_sync-ed blocks.  It will propagate upward when
	 * spa_vdev_exit() calls vdev_dtl_reassess().
	 */
	dtl_max_txg = txg + TXG_CONCURRENT_STATES;

	FUNC26(newvd, DTL_MISSING, TXG_INITIAL,
	    dtl_max_txg - TXG_INITIAL);

	if (newvd->vdev_isspare) {
		FUNC11(newvd);
		FUNC5(spa, newvd, NULL, ESC_ZFS_VDEV_SPARE);
	}

	oldvdpath = FUNC12(oldvd->vdev_path);
	newvdpath = FUNC12(newvd->vdev_path);
	newvd_isspare = newvd->vdev_isspare;

	/*
	 * Mark newvd's DTL dirty in this txg.
	 */
	FUNC25(tvd, VDD_DTL, newvd, txg);

	/*
	 * Schedule the resilver to restart in the future. We do this to
	 * ensure that dmu_sync-ed blocks have been stitched into the
	 * respective datasets.
	 */
	FUNC2(spa->spa_dsl_pool, dtl_max_txg);

	if (spa->spa_bootfs)
		FUNC5(spa, newvd, NULL, ESC_ZFS_BOOTFS_VDEV_ATTACH);

	FUNC5(spa, newvd, NULL, ESC_ZFS_VDEV_ATTACH);

	/*
	 * Commit the config
	 */
	(void) FUNC15(spa, newrootvd, dtl_max_txg, 0);

	FUNC9(spa, "vdev attach", NULL,
	    "%s vdev=%s %s vdev=%s",
	    replacing && newvd_isspare ? "spare in" :
	    replacing ? "replace" : "attach", newvdpath,
	    replacing ? "for" : "to", oldvdpath);

	FUNC13(oldvdpath);
	FUNC13(newvdpath);

	return (0);
}