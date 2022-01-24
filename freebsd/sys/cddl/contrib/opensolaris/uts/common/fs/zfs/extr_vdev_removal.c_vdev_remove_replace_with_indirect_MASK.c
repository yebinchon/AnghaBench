#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  vdev_state_dirty_node; scalar_t__ vdev_leaf_zap; scalar_t__ vdev_removing; TYPE_3__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  svr_lock; int /*<<< orphan*/  svr_cv; int /*<<< orphan*/ * svr_thread; int /*<<< orphan*/  svr_zaplist; } ;
typedef  TYPE_2__ spa_vdev_removal_t ;
struct TYPE_14__ {int /*<<< orphan*/  spa_dsl_pool; TYPE_2__* spa_vdev_removal; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_indirect_ops ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_remove_complete_sync ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(vdev_t *vd, uint64_t txg)
{
	vdev_t *ivd;
	dmu_tx_t *tx;
	spa_t *spa = vd->vdev_spa;
	spa_vdev_removal_t *svr = spa->spa_vdev_removal;

	/*
	 * First, build a list of leaf zaps to be destroyed.
	 * This is passed to the sync context thread,
	 * which does the actual unlinking.
	 */
	svr->svr_zaplist = FUNC5();
	FUNC12(vd, svr->svr_zaplist);

	ivd = FUNC9(vd, &vdev_indirect_ops);
	ivd->vdev_removing = 0;

	vd->vdev_leaf_zap = 0;

	FUNC11(ivd, vd);
	FUNC10(ivd);

	FUNC0(!FUNC6(&vd->vdev_state_dirty_node));

	tx = FUNC3(spa->spa_dsl_pool, txg);
	FUNC4(spa->spa_dsl_pool, vdev_remove_complete_sync, svr,
	    0, ZFS_SPACE_CHECK_NONE, tx);
	FUNC2(tx);

	/*
	 * Indicate that this thread has exited.
	 * After this, we can not use svr.
	 */
	FUNC7(&svr->svr_lock);
	svr->svr_thread = NULL;
	FUNC1(&svr->svr_cv);
	FUNC8(&svr->svr_lock);
}