#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_21__ {int scn_async_destroying; int scn_async_stalled; scalar_t__ scn_visited_this_txg; int /*<<< orphan*/  scn_async_block_min_time_ms; void* scn_is_bptree; scalar_t__ scn_sync_start_time; int /*<<< orphan*/ * scn_zio_root; } ;
typedef  TYPE_1__ dsl_scan_t ;
struct TYPE_22__ {int /*<<< orphan*/  dp_obsolete_bpobj; int /*<<< orphan*/ * dp_spa; int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/ * dp_free_dir; int /*<<< orphan*/ * dp_leak_dir; int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/  dp_root_dir; scalar_t__ dp_bptree_obj; int /*<<< orphan*/  dp_free_bpobj; TYPE_1__* dp_scan; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_23__ {scalar_t__ tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_20__ {int /*<<< orphan*/  dd_uncompressed_bytes; int /*<<< orphan*/  dd_compressed_bytes; int /*<<< orphan*/  dd_used_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DD_USED_HEAD ; 
 int /*<<< orphan*/  DMU_POOL_BPTREE_OBJ ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_OBSOLETE_BPOBJ ; 
 int ECKSUM ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int ERESTART ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  LEAK_DIR_NAME ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_FLAG_MUSTSUCCEED ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,void*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_11__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  dsl_scan_free_block_cb ; 
 int /*<<< orphan*/  dsl_scan_obsolete_block_cb ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ zfs_free_bpobj_enabled ; 
 scalar_t__ zfs_free_leak_on_eio ; 
 int /*<<< orphan*/  zfs_free_min_time_ms ; 
 int /*<<< orphan*/  zfs_obsolete_min_time_ms ; 
 int /*<<< orphan*/  FUNC27 (char*,int) ; 
 void* FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC30(dsl_pool_t *dp, dmu_tx_t *tx)
{
	int err = 0;
	dsl_scan_t *scn = dp->dp_scan;
	spa_t *spa = dp->dp_spa;

	if (FUNC22(spa))
		return (0);

	if (zfs_free_bpobj_enabled &&
	    FUNC23(spa) >= SPA_VERSION_DEADLISTS) {
		scn->scn_is_bptree = B_FALSE;
		scn->scn_async_block_min_time_ms = zfs_free_min_time_ms;
		scn->scn_zio_root = FUNC28(spa, NULL,
		    NULL, ZIO_FLAG_MUSTSUCCEED);
		err = FUNC7(&dp->dp_free_bpobj,
		    dsl_scan_free_block_cb, scn, tx);
		FUNC4(FUNC29(scn->scn_zio_root));
		scn->scn_zio_root = NULL;

		if (err != 0 && err != ERESTART)
			FUNC27("error %u from bpobj_iterate()", err);
	}

	if (err == 0 && FUNC21(spa, SPA_FEATURE_ASYNC_DESTROY)) {
		FUNC0(scn->scn_async_destroying);
		scn->scn_is_bptree = B_TRUE;
		scn->scn_zio_root = FUNC28(spa, NULL,
		    NULL, ZIO_FLAG_MUSTSUCCEED);
		err = FUNC10(dp->dp_meta_objset,
		    dp->dp_bptree_obj, B_TRUE, dsl_scan_free_block_cb, scn, tx);
		FUNC4(FUNC29(scn->scn_zio_root));
		scn->scn_zio_root = NULL;

		if (err == EIO || err == ECKSUM) {
			err = 0;
		} else if (err != 0 && err != ERESTART) {
			FUNC27("error %u from "
			    "traverse_dataset_destroyed()", err);
		}

		if (FUNC9(dp->dp_meta_objset, dp->dp_bptree_obj)) {
			/* finished; deactivate async destroy feature */
			FUNC20(spa, SPA_FEATURE_ASYNC_DESTROY, tx);
			FUNC0(!FUNC21(spa,
			    SPA_FEATURE_ASYNC_DESTROY));
			FUNC4(FUNC25(dp->dp_meta_objset,
			    DMU_POOL_DIRECTORY_OBJECT,
			    DMU_POOL_BPTREE_OBJ, tx));
			FUNC4(FUNC8(dp->dp_meta_objset,
			    dp->dp_bptree_obj, tx));
			dp->dp_bptree_obj = 0;
			scn->scn_async_destroying = B_FALSE;
			scn->scn_async_stalled = B_FALSE;
		} else {
			/*
			 * If we didn't make progress, mark the async
			 * destroy as stalled, so that we will not initiate
			 * a spa_sync() on its behalf.  Note that we only
			 * check this if we are not finished, because if the
			 * bptree had no blocks for us to visit, we can
			 * finish without "making progress".
			 */
			scn->scn_async_stalled =
			    (scn->scn_visited_this_txg == 0);
		}
	}
	if (scn->scn_visited_this_txg) {
		FUNC26("freed %llu blocks in %llums from "
		    "free_bpobj/bptree txg %llu; err=%d",
		    (longlong_t)scn->scn_visited_this_txg,
		    (longlong_t)
		    FUNC3(FUNC17() - scn->scn_sync_start_time),
		    (longlong_t)tx->tx_txg, err);
		scn->scn_visited_this_txg = 0;

		/*
		 * Write out changes to the DDT that may be required as a
		 * result of the blocks freed.  This ensures that the DDT
		 * is clean when a scrub/resilver runs.
		 */
		FUNC11(spa, tx->tx_txg);
	}
	if (err != 0)
		return (err);
	if (dp->dp_free_dir != NULL && !scn->scn_async_destroying &&
	    zfs_free_leak_on_eio &&
	    (FUNC14(dp->dp_free_dir)->dd_used_bytes != 0 ||
	    FUNC14(dp->dp_free_dir)->dd_compressed_bytes != 0 ||
	    FUNC14(dp->dp_free_dir)->dd_uncompressed_bytes != 0)) {
		/*
		 * We have finished background destroying, but there is still
		 * some space left in the dp_free_dir. Transfer this leaked
		 * space to the dp_leak_dir.
		 */
		if (dp->dp_leak_dir == NULL) {
			FUNC18(&dp->dp_config_rwlock, RW_WRITER, FTAG);
			(void) FUNC12(dp, dp->dp_root_dir,
			    LEAK_DIR_NAME, tx);
			FUNC4(FUNC16(dp,
			    LEAK_DIR_NAME, &dp->dp_leak_dir));
			FUNC19(&dp->dp_config_rwlock, FTAG);
		}
		FUNC13(dp->dp_leak_dir, DD_USED_HEAD,
		    FUNC14(dp->dp_free_dir)->dd_used_bytes,
		    FUNC14(dp->dp_free_dir)->dd_compressed_bytes,
		    FUNC14(dp->dp_free_dir)->dd_uncompressed_bytes, tx);
		FUNC13(dp->dp_free_dir, DD_USED_HEAD,
		    -FUNC14(dp->dp_free_dir)->dd_used_bytes,
		    -FUNC14(dp->dp_free_dir)->dd_compressed_bytes,
		    -FUNC14(dp->dp_free_dir)->dd_uncompressed_bytes, tx);
	}

	if (dp->dp_free_dir != NULL && !scn->scn_async_destroying) {
		/* finished; verify that space accounting went to zero */
		FUNC1(FUNC14(dp->dp_free_dir)->dd_used_bytes);
		FUNC1(FUNC14(dp->dp_free_dir)->dd_compressed_bytes);
		FUNC1(FUNC14(dp->dp_free_dir)->dd_uncompressed_bytes);
	}

	FUNC2(FUNC6(&dp->dp_obsolete_bpobj),
	    0 == FUNC24(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_OBSOLETE_BPOBJ));
	if (err == 0 && FUNC6(&dp->dp_obsolete_bpobj)) {
		FUNC0(FUNC21(dp->dp_spa,
		    SPA_FEATURE_OBSOLETE_COUNTS));

		scn->scn_is_bptree = B_FALSE;
		scn->scn_async_block_min_time_ms = zfs_obsolete_min_time_ms;
		err = FUNC7(&dp->dp_obsolete_bpobj,
		    dsl_scan_obsolete_block_cb, scn, tx);
		if (err != 0 && err != ERESTART)
			FUNC27("error %u from bpobj_iterate()", err);

		if (FUNC5(&dp->dp_obsolete_bpobj))
			FUNC15(dp, tx);
	}

	return (0);
}