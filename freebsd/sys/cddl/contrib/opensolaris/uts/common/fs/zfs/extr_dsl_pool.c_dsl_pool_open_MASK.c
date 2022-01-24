#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_18__ {int /*<<< orphan*/  tx_open_txg; } ;
struct TYPE_19__ {int /*<<< orphan*/  dp_config_rwlock; TYPE_1__ dp_tx; int /*<<< orphan*/  dp_tmp_userrefs_obj; int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_empty_bpobj; int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_bptree_obj; int /*<<< orphan*/ * dp_leak_dir; int /*<<< orphan*/  dp_obsolete_bpobj; int /*<<< orphan*/  dp_free_bpobj; int /*<<< orphan*/ * dp_free_dir; int /*<<< orphan*/ * dp_origin_snap; int /*<<< orphan*/ * dp_mos_dir; int /*<<< orphan*/  dp_root_dir; int /*<<< orphan*/  dp_root_dir_obj; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_20__ {int /*<<< orphan*/  dd_head_dataset_obj; } ;
struct TYPE_17__ {int /*<<< orphan*/  ds_prev_snap_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_BPTREE_OBJ ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_EMPTY_BPOBJ ; 
 int /*<<< orphan*/  DMU_POOL_FREE_BPOBJ ; 
 int /*<<< orphan*/  DMU_POOL_OBSOLETE_BPOBJ ; 
 int /*<<< orphan*/  DMU_POOL_ROOT_DATASET ; 
 int /*<<< orphan*/  DMU_POOL_TMP_USERREFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  FREE_DIR_NAME ; 
 TYPE_2__* FTAG ; 
 int /*<<< orphan*/  LEAK_DIR_NAME ; 
 int /*<<< orphan*/  MOS_DIR_NAME ; 
 int /*<<< orphan*/  ORIGIN_DIR_NAME ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 int /*<<< orphan*/  SPA_FEATURE_EMPTY_BPOBJ ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 scalar_t__ SPA_VERSION_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ **) ; 
 TYPE_13__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC15(dsl_pool_t *dp)
{
	int err;
	dsl_dir_t *dd;
	dsl_dataset_t *ds;
	uint64_t obj;

	FUNC10(&dp->dp_config_rwlock, RW_WRITER, FTAG);
	err = FUNC14(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_ROOT_DATASET, sizeof (uint64_t), 1,
	    &dp->dp_root_dir_obj);
	if (err)
		goto out;

	err = FUNC5(dp, dp->dp_root_dir_obj,
	    NULL, dp, &dp->dp_root_dir);
	if (err)
		goto out;

	err = FUNC8(dp, MOS_DIR_NAME, &dp->dp_mos_dir);
	if (err)
		goto out;

	if (FUNC13(dp->dp_spa) >= SPA_VERSION_ORIGIN) {
		err = FUNC8(dp, ORIGIN_DIR_NAME, &dd);
		if (err)
			goto out;
		err = FUNC2(dp,
		    FUNC6(dd)->dd_head_dataset_obj, FTAG, &ds);
		if (err == 0) {
			err = FUNC2(dp,
			    FUNC3(ds)->ds_prev_snap_obj, dp,
			    &dp->dp_origin_snap);
			FUNC4(ds, FTAG);
		}
		FUNC7(dd, dp);
		if (err)
			goto out;
	}

	if (FUNC13(dp->dp_spa) >= SPA_VERSION_DEADLISTS) {
		err = FUNC8(dp, FREE_DIR_NAME,
		    &dp->dp_free_dir);
		if (err)
			goto out;

		err = FUNC14(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_FREE_BPOBJ, sizeof (uint64_t), 1, &obj);
		if (err)
			goto out;
		FUNC0(FUNC1(&dp->dp_free_bpobj,
		    dp->dp_meta_objset, obj));
	}

	if (FUNC12(dp->dp_spa, SPA_FEATURE_OBSOLETE_COUNTS)) {
		err = FUNC14(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_OBSOLETE_BPOBJ, sizeof (uint64_t), 1, &obj);
		if (err == 0) {
			FUNC0(FUNC1(&dp->dp_obsolete_bpobj,
			    dp->dp_meta_objset, obj));
		} else if (err == ENOENT) {
			/*
			 * We might not have created the remap bpobj yet.
			 */
			err = 0;
		} else {
			goto out;
		}
	}

	/*
	 * Note: errors ignored, because the these special dirs, used for
	 * space accounting, are only created on demand.
	 */
	(void) FUNC8(dp, LEAK_DIR_NAME,
	    &dp->dp_leak_dir);

	if (FUNC12(dp->dp_spa, SPA_FEATURE_ASYNC_DESTROY)) {
		err = FUNC14(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_BPTREE_OBJ, sizeof (uint64_t), 1,
		    &dp->dp_bptree_obj);
		if (err != 0)
			goto out;
	}

	if (FUNC12(dp->dp_spa, SPA_FEATURE_EMPTY_BPOBJ)) {
		err = FUNC14(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_EMPTY_BPOBJ, sizeof (uint64_t), 1,
		    &dp->dp_empty_bpobj);
		if (err != 0)
			goto out;
	}

	err = FUNC14(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_TMP_USERREFS, sizeof (uint64_t), 1,
	    &dp->dp_tmp_userrefs_obj);
	if (err == ENOENT)
		err = 0;
	if (err)
		goto out;

	err = FUNC9(dp, dp->dp_tx.tx_open_txg);

out:
	FUNC11(&dp->dp_config_rwlock, FTAG);
	return (err);
}