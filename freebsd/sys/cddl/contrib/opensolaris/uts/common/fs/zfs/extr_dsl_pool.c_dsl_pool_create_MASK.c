#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_17__ {int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/ * dp_spa; int /*<<< orphan*/ * dp_root_dir; void* dp_meta_objset; int /*<<< orphan*/  dp_free_bpobj; int /*<<< orphan*/  dp_free_dir; int /*<<< orphan*/  dp_mos_dir; int /*<<< orphan*/  dp_root_dir_obj; int /*<<< orphan*/  dp_meta_rootbp; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_18__ {int /*<<< orphan*/  ds_bp_rwlock; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_OST_META ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_OBJECT_DIRECTORY ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_FREE_BPOBJ ; 
 int /*<<< orphan*/ * FREE_DIR_NAME ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/ * MOS_DIR_NAME ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 scalar_t__ SPA_VERSION_DSL_SCRUB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

dsl_pool_t *
FUNC24(spa_t *spa, nvlist_t *zplprops, uint64_t txg)
{
	int err;
	dsl_pool_t *dp = FUNC15(spa, txg);
	dmu_tx_t *tx = FUNC7(dp, txg);
	dsl_dataset_t *ds;
	uint64_t obj;

	FUNC18(&dp->dp_config_rwlock, RW_WRITER, FTAG);

	/* create and open the MOS (meta-objset) */
	dp->dp_meta_objset = FUNC5(spa,
	    NULL, &dp->dp_meta_rootbp, DMU_OST_META, tx);

	/* create the pool directory */
	err = FUNC22(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_OT_OBJECT_DIRECTORY, DMU_OT_NONE, 0, tx);
	FUNC0(err);

	/* Initialize scan structures */
	FUNC2(FUNC17(dp, txg));

	/* create and open the root dir */
	dp->dp_root_dir_obj = FUNC12(dp, NULL, NULL, tx);
	FUNC2(FUNC13(dp, dp->dp_root_dir_obj,
	    NULL, dp, &dp->dp_root_dir));

	/* create and open the meta-objset dir */
	(void) FUNC12(dp, dp->dp_root_dir, MOS_DIR_NAME, tx);
	FUNC2(FUNC16(dp,
	    MOS_DIR_NAME, &dp->dp_mos_dir));

	if (FUNC20(spa) >= SPA_VERSION_DEADLISTS) {
		/* create and open the free dir */
		(void) FUNC12(dp, dp->dp_root_dir,
		    FREE_DIR_NAME, tx);
		FUNC2(FUNC16(dp,
		    FREE_DIR_NAME, &dp->dp_free_dir));

		/* create and open the free_bplist */
		obj = FUNC3(dp->dp_meta_objset, SPA_OLD_MAXBLOCKSIZE, tx);
		FUNC1(FUNC21(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_FREE_BPOBJ, sizeof (uint64_t), 1, &obj, tx) == 0);
		FUNC2(FUNC4(&dp->dp_free_bpobj,
		    dp->dp_meta_objset, obj));
	}

	if (FUNC20(spa) >= SPA_VERSION_DSL_SCRUB)
		FUNC14(dp, tx);

	/* create the root dataset */
	obj = FUNC8(dp->dp_root_dir, NULL, 0, tx);

	/* create the root objset */
	FUNC2(FUNC10(dp, obj, FTAG, &ds));
#ifdef _KERNEL
	{
		objset_t *os;
		rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
		os = dmu_objset_create_impl(dp->dp_spa, ds,
		    dsl_dataset_get_blkptr(ds), DMU_OST_ZFS, tx);
		rrw_exit(&ds->ds_bp_rwlock, FTAG);
		zfs_create_fs(os, kcred, zplprops, tx);
	}
#endif
	FUNC11(ds, FTAG);

	FUNC6(tx);

	FUNC19(&dp->dp_config_rwlock, FTAG);

	return (dp);
}