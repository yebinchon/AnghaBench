#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_10__ {scalar_t__ dp_dirty_total; int /*<<< orphan*/  dp_lock; int /*<<< orphan*/  dp_spaceavail_cv; int /*<<< orphan*/ * dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ dn_assigned_txg; int /*<<< orphan*/  dn_mtx; int /*<<< orphan*/  dn_notxholds; } ;
typedef  TYPE_3__ dnode_t ;
struct TYPE_12__ {scalar_t__ tx_txg; scalar_t__ tx_lasttried_txg; TYPE_1__* tx_needassign_txh; int /*<<< orphan*/  tx_dirty_delayed; scalar_t__ tx_wait_dirty; TYPE_2__* tx_pool; } ;
typedef  TYPE_4__ dmu_tx_t ;
struct TYPE_9__ {TYPE_3__* txh_dnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ zfs_dirty_data_max ; 

void
FUNC9(dmu_tx_t *tx)
{
	spa_t *spa = tx->tx_pool->dp_spa;
	dsl_pool_t *dp = tx->tx_pool;

	FUNC0(tx->tx_txg == 0);
	FUNC0(!FUNC3(tx->tx_pool));

	if (tx->tx_wait_dirty) {
		/*
		 * dmu_tx_try_assign() has determined that we need to wait
		 * because we've consumed much or all of the dirty buffer
		 * space.
		 */
		FUNC4(&dp->dp_lock);
		while (dp->dp_dirty_total >= zfs_dirty_data_max)
			FUNC1(&dp->dp_spaceavail_cv, &dp->dp_lock);
		uint64_t dirty = dp->dp_dirty_total;
		FUNC5(&dp->dp_lock);

		FUNC2(tx, dirty);

		tx->tx_wait_dirty = B_FALSE;

		/*
		 * Note: setting tx_dirty_delayed only has effect if the
		 * caller used TX_WAIT.  Otherwise they are going to
		 * destroy this tx and try again.  The common case,
		 * zfs_write(), uses TX_WAIT.
		 */
		tx->tx_dirty_delayed = B_TRUE;
	} else if (FUNC7(spa) || tx->tx_lasttried_txg == 0) {
		/*
		 * If the pool is suspended we need to wait until it
		 * is resumed.  Note that it's possible that the pool
		 * has become active after this thread has tried to
		 * obtain a tx.  If that's the case then tx_lasttried_txg
		 * would not have been set.
		 */
		FUNC8(dp, FUNC6(spa) + 1);
	} else if (tx->tx_needassign_txh) {
		/*
		 * A dnode is assigned to the quiescing txg.  Wait for its
		 * transaction to complete.
		 */
		dnode_t *dn = tx->tx_needassign_txh->txh_dnode;

		FUNC4(&dn->dn_mtx);
		while (dn->dn_assigned_txg == tx->tx_lasttried_txg - 1)
			FUNC1(&dn->dn_notxholds, &dn->dn_mtx);
		FUNC5(&dn->dn_mtx);
		tx->tx_needassign_txh = NULL;
	} else {
		/*
		 * If we have a lot of dirty data just wait until we sync
		 * out a TXG at which point we'll hopefully have synced
		 * a portion of the changes.
		 */
		FUNC8(dp, FUNC6(spa) + 1);
	}
}