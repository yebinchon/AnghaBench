#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_32__ {int /*<<< orphan*/  dp_spa; TYPE_3__* dp_origin_snap; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_33__ {TYPE_6__* dd_dbuf; int /*<<< orphan*/  dd_object; TYPE_1__* dd_pool; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_34__ {TYPE_2__* ds_dir; int /*<<< orphan*/  ds_object; int /*<<< orphan*/  ds_deadlist; TYPE_6__* ds_dbuf; scalar_t__* ds_feature_inuse; int /*<<< orphan*/  ds_bp_rwlock; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_35__ {int ds_flags; scalar_t__ ds_guid; int ds_creation_txg; int /*<<< orphan*/  ds_prev_snap_obj; int /*<<< orphan*/  ds_prev_snap_txg; int /*<<< orphan*/  ds_deadlist_obj; int /*<<< orphan*/  ds_bp; int /*<<< orphan*/  ds_uncompressed_bytes; int /*<<< orphan*/  ds_compressed_bytes; int /*<<< orphan*/  ds_referenced_bytes; int /*<<< orphan*/  ds_creation_time; int /*<<< orphan*/  ds_snapnames_zapobj; int /*<<< orphan*/  ds_fsid_guid; int /*<<< orphan*/  ds_dir_obj; } ;
typedef  TYPE_4__ dsl_dataset_phys_t ;
struct TYPE_36__ {int tx_txg; } ;
typedef  TYPE_5__ dmu_tx_t ;
struct TYPE_37__ {TYPE_4__* db_data; } ;
typedef  TYPE_6__ dmu_buf_t ;
struct TYPE_31__ {scalar_t__ ds_num_children; int ds_flags; scalar_t__ ds_next_clones_obj; int /*<<< orphan*/  ds_bp; int /*<<< orphan*/  ds_uncompressed_bytes; int /*<<< orphan*/  ds_compressed_bytes; int /*<<< orphan*/  ds_referenced_bytes; int /*<<< orphan*/  ds_creation_txg; } ;
struct TYPE_30__ {scalar_t__ dd_head_dataset_obj; scalar_t__ dd_clones; int /*<<< orphan*/  dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_OT_DSL_CLONES ; 
 int /*<<< orphan*/  DMU_OT_DSL_DATASET ; 
 int /*<<< orphan*/  DMU_OT_DSL_DS_SNAP_MAP ; 
 int /*<<< orphan*/  DMU_OT_NEXT_CLONES ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int DS_FLAG_CI_DATASET ; 
 int DS_FLAG_INCONSISTENT ; 
 int DS_FLAG_UNIQUE_ACCURATE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 size_t SPA_FEATURES ; 
 scalar_t__ SPA_VERSION_DIR_CLONES ; 
 scalar_t__ SPA_VERSION_NEXT_CLONES ; 
 scalar_t__ SPA_VERSION_UNIQUE_ACCURATE ; 
 int TXG_INITIAL ; 
 int /*<<< orphan*/  U8_TEXTPREP_TOUPPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (void*,size_t,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,TYPE_3__**) ; 
 TYPE_15__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_10__* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (void*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__,void*,TYPE_5__*) ; 
 void* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 

uint64_t
FUNC24(dsl_dir_t *dd, dsl_dataset_t *origin,
    uint64_t flags, dmu_tx_t *tx)
{
	dsl_pool_t *dp = dd->dd_pool;
	dmu_buf_t *dbuf;
	dsl_dataset_phys_t *dsphys;
	uint64_t dsobj;
	objset_t *mos = dp->dp_meta_objset;

	if (origin == NULL)
		origin = dp->dp_origin_snap;

	FUNC0(origin == NULL || origin->ds_dir->dd_pool == dp);
	FUNC0(origin == NULL || FUNC10(origin)->ds_num_children > 0);
	FUNC0(FUNC7(tx));
	FUNC0(FUNC14(dd)->dd_head_dataset_obj == 0);

	dsobj = FUNC6(mos, DMU_OT_DSL_DATASET, 0,
	    DMU_OT_DSL_DATASET, sizeof (dsl_dataset_phys_t), tx);
	FUNC1(FUNC3(mos, dsobj, FTAG, &dbuf));
	FUNC5(dbuf, tx);
	dsphys = dbuf->db_data;
	FUNC2(dsphys, sizeof (dsl_dataset_phys_t));
	dsphys->ds_dir_obj = dd->dd_object;
	dsphys->ds_flags = flags;
	dsphys->ds_fsid_guid = FUNC20();
	do {
		(void) FUNC16((void*)&dsphys->ds_guid,
		    sizeof (dsphys->ds_guid));
	} while (dsphys->ds_guid == 0);
	dsphys->ds_snapnames_zapobj =
	    FUNC23(mos, U8_TEXTPREP_TOUPPER, DMU_OT_DSL_DS_SNAP_MAP,
	    DMU_OT_NONE, 0, tx);
	dsphys->ds_creation_time = FUNC15();
	dsphys->ds_creation_txg = tx->tx_txg == TXG_INITIAL ? 1 : tx->tx_txg;

	if (origin == NULL) {
		dsphys->ds_deadlist_obj = FUNC12(mos, tx);
	} else {
		dsl_dataset_t *ohds; /* head of the origin snapshot */

		dsphys->ds_prev_snap_obj = origin->ds_object;
		dsphys->ds_prev_snap_txg =
		    FUNC10(origin)->ds_creation_txg;
		dsphys->ds_referenced_bytes =
		    FUNC10(origin)->ds_referenced_bytes;
		dsphys->ds_compressed_bytes =
		    FUNC10(origin)->ds_compressed_bytes;
		dsphys->ds_uncompressed_bytes =
		    FUNC10(origin)->ds_uncompressed_bytes;
		FUNC17(&origin->ds_bp_rwlock, RW_READER, FTAG);
		dsphys->ds_bp = FUNC10(origin)->ds_bp;
		FUNC18(&origin->ds_bp_rwlock, FTAG);

		/*
		 * Inherit flags that describe the dataset's contents
		 * (INCONSISTENT) or properties (Case Insensitive).
		 */
		dsphys->ds_flags |= FUNC10(origin)->ds_flags &
		    (DS_FLAG_INCONSISTENT | DS_FLAG_CI_DATASET);

		for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
			if (origin->ds_feature_inuse[f])
				FUNC8(dsobj, f, tx);
		}

		FUNC5(origin->ds_dbuf, tx);
		FUNC10(origin)->ds_num_children++;

		FUNC1(FUNC9(dp,
		    FUNC14(origin->ds_dir)->dd_head_dataset_obj,
		    FTAG, &ohds));
		dsphys->ds_deadlist_obj = FUNC13(&ohds->ds_deadlist,
		    dsphys->ds_prev_snap_txg, dsphys->ds_prev_snap_obj, tx);
		FUNC11(ohds, FTAG);

		if (FUNC19(dp->dp_spa) >= SPA_VERSION_NEXT_CLONES) {
			if (FUNC10(origin)->ds_next_clones_obj == 0) {
				FUNC10(origin)->ds_next_clones_obj =
				    FUNC22(mos,
				    DMU_OT_NEXT_CLONES, DMU_OT_NONE, 0, tx);
			}
			FUNC1(FUNC21(mos,
			    FUNC10(origin)->ds_next_clones_obj,
			    dsobj, tx));
		}

		FUNC5(dd->dd_dbuf, tx);
		FUNC14(dd)->dd_origin_obj = origin->ds_object;
		if (FUNC19(dp->dp_spa) >= SPA_VERSION_DIR_CLONES) {
			if (FUNC14(origin->ds_dir)->dd_clones == 0) {
				FUNC5(origin->ds_dir->dd_dbuf, tx);
				FUNC14(origin->ds_dir)->dd_clones =
				    FUNC22(mos,
				    DMU_OT_DSL_CLONES, DMU_OT_NONE, 0, tx);
			}
			FUNC1(FUNC21(mos,
			    FUNC14(origin->ds_dir)->dd_clones,
			    dsobj, tx));
		}
	}

	if (FUNC19(dp->dp_spa) >= SPA_VERSION_UNIQUE_ACCURATE)
		dsphys->ds_flags |= DS_FLAG_UNIQUE_ACCURATE;

	FUNC4(dbuf, FTAG);

	FUNC5(dd->dd_dbuf, tx);
	FUNC14(dd)->dd_head_dataset_obj = dsobj;

	return (dsobj);
}