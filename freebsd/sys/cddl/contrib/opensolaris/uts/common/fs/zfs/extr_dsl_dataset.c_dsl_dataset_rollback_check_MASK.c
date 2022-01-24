#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_15__ {scalar_t__ ds_dir; scalar_t__ ds_object; scalar_t__ ds_quota; int /*<<< orphan*/  ds_reserved; struct TYPE_15__* ds_prev; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_16__ {int /*<<< orphan*/  ddra_owner; int /*<<< orphan*/ * ddra_tosnap; int /*<<< orphan*/ * ddra_fsname; } ;
typedef  TYPE_2__ dsl_dataset_rollback_arg_t ;
struct TYPE_17__ {scalar_t__ tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_19__ {scalar_t__ ds_prev_snap_txg; scalar_t__ ds_referenced_bytes; int /*<<< orphan*/  ds_unique_bytes; } ;
struct TYPE_18__ {scalar_t__ dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  ESRCH ; 
 int EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ TXG_INITIAL ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 TYPE_8__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 TYPE_5__* FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int
FUNC21(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_rollback_arg_t *ddra = arg;
	dsl_pool_t *dp = FUNC4(tx);
	dsl_dataset_t *ds;
	int64_t unused_refres_delta;
	int error;

	error = FUNC6(dp, ddra->ddra_fsname, FTAG, &ds);
	if (error != 0)
		return (error);

	/* must not be a snapshot */
	if (ds->ds_is_snapshot) {
		FUNC8(ds, FTAG);
		return (FUNC2(EINVAL));
	}

	/* must have a most recent snapshot */
	if (FUNC7(ds)->ds_prev_snap_txg < TXG_INITIAL) {
		FUNC8(ds, FTAG);
		return (FUNC2(ESRCH));
	}

	/*
	 * No rollback to a snapshot created in the current txg, because
	 * the rollback may dirty the dataset and create blocks that are
	 * not reachable from the rootbp while having a birth txg that
	 * falls into the snapshot's range.
	 */
	if (FUNC3(tx) &&
	    FUNC7(ds)->ds_prev_snap_txg >= tx->tx_txg) {
		FUNC8(ds, FTAG);
		return (FUNC2(EAGAIN));
	}

	/*
	 * If the expected target snapshot is specified, then check that
	 * the latest snapshot is it.
	 */
	if (ddra->ddra_tosnap != NULL) {
		dsl_dataset_t *snapds;

		/* Check if the target snapshot exists at all. */
		error = FUNC6(dp, ddra->ddra_tosnap, FTAG, &snapds);
		if (error != 0) {
			/*
			 * ESRCH is used to signal that the target snapshot does
			 * not exist, while ENOENT is used to report that
			 * the rolled back dataset does not exist.
			 * ESRCH is also used to cover other cases where the
			 * target snapshot is not related to the dataset being
			 * rolled back such as being in a different pool.
			 */
			if (error == ENOENT || error == EXDEV)
				error = FUNC2(ESRCH);
			FUNC8(ds, FTAG);
			return (error);
		}
		FUNC0(snapds->ds_is_snapshot);

		/* Check if the snapshot is the latest snapshot indeed. */
		if (snapds != ds->ds_prev) {
			/*
			 * Distinguish between the case where the only problem
			 * is intervening snapshots (EEXIST) vs the snapshot
			 * not being a valid target for rollback (ESRCH).
			 */
			if (snapds->ds_dir == ds->ds_dir ||
			    (FUNC9(ds->ds_dir) &&
			    FUNC10(ds->ds_dir)->dd_origin_obj ==
			    snapds->ds_object)) {
				error = FUNC2(EEXIST);
			} else {
				error = FUNC2(ESRCH);
			}
			FUNC8(snapds, FTAG);
			FUNC8(ds, FTAG);
			return (error);
		}
		FUNC8(snapds, FTAG);
	}

	/* must not have any bookmarks after the most recent snapshot */
	nvlist_t *proprequest = FUNC14();
	FUNC13(proprequest, FUNC20(ZFS_PROP_CREATETXG));
	nvlist_t *bookmarks = FUNC14();
	error = FUNC12(ds, proprequest, bookmarks);
	FUNC15(proprequest);
	if (error != 0) {
		FUNC8(ds, FTAG);
		return (error);
	}
	for (nvpair_t *pair = FUNC19(bookmarks, NULL);
	    pair != NULL; pair = FUNC19(bookmarks, pair)) {
		nvlist_t *valuenv =
		    FUNC16(FUNC18(pair),
		    FUNC20(ZFS_PROP_CREATETXG));
		uint64_t createtxg = FUNC17(valuenv, "value");
		if (createtxg > FUNC7(ds)->ds_prev_snap_txg) {
			FUNC15(bookmarks);
			FUNC8(ds, FTAG);
			return (FUNC2(EEXIST));
		}
	}
	FUNC15(bookmarks);

	error = FUNC5(ds, ddra->ddra_owner, tx);
	if (error != 0) {
		FUNC8(ds, FTAG);
		return (error);
	}

	/*
	 * Check if the snap we are rolling back to uses more than
	 * the refquota.
	 */
	if (ds->ds_quota != 0 &&
	    FUNC7(ds->ds_prev)->ds_referenced_bytes > ds->ds_quota) {
		FUNC8(ds, FTAG);
		return (FUNC2(EDQUOT));
	}

	/*
	 * When we do the clone swap, we will temporarily use more space
	 * due to the refreservation (the head will no longer have any
	 * unique space, so the entire amount of the refreservation will need
	 * to be free).  We will immediately destroy the clone, freeing
	 * this space, but the freeing happens over many txg's.
	 */
	unused_refres_delta = (int64_t)FUNC1(ds->ds_reserved,
	    FUNC7(ds)->ds_unique_bytes);

	if (unused_refres_delta > 0 &&
	    unused_refres_delta >
	    FUNC11(ds->ds_dir, NULL, 0, TRUE)) {
		FUNC8(ds, FTAG);
		return (FUNC2(ENOSPC));
	}

	FUNC8(ds, FTAG);
	return (0);
}