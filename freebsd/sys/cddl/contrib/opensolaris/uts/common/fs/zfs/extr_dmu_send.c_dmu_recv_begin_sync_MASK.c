#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct drr_begin {int drr_flags; scalar_t__ drr_fromguid; int drr_toguid; int* drr_toname; int /*<<< orphan*/  drr_type; int /*<<< orphan*/  drr_versioninfo; } ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_22__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_23__ {int /*<<< orphan*/  ds_bp_rwlock; int /*<<< orphan*/  ds_dbuf; int /*<<< orphan*/ * ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_24__ {scalar_t__ drba_snapobj; char const* drba_origin; TYPE_1__* drba_cookie; int /*<<< orphan*/  drba_cred; } ;
typedef  TYPE_4__ dmu_recv_begin_arg_t ;
struct TYPE_25__ {int /*<<< orphan*/  ds_flags; } ;
struct TYPE_21__ {char* drc_tofs; TYPE_3__* drc_ds; scalar_t__ drc_resumable; int /*<<< orphan*/  drc_newfs; struct drr_begin* drc_drrb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int DMU_BACKUP_FEATURE_COMPRESSED ; 
 int DMU_BACKUP_FEATURE_EMBED_DATA ; 
 int DMU_BACKUP_FEATURE_LARGE_BLOCKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DRR_FLAG_CI_DATA ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_BYTES ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_COMPRESSOK ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_EMBEDOK ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_FROMGUID ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_LARGEBLOCK ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_OBJECT ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_OFFSET ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_TOGUID ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_TONAME ; 
 int DS_FLAG_CI_DATASET ; 
 int /*<<< orphan*/  DS_FLAG_INCONSISTENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dmu_recv_tag ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_2__*,char const*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_3__**) ; 
 TYPE_9__* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ recv_clone_name ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*) ; 
 int FUNC19 (int*) ; 
 scalar_t__ FUNC20 (char const*,char) ; 
 int FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(void *arg, dmu_tx_t *tx)
{
	dmu_recv_begin_arg_t *drba = arg;
	dsl_pool_t *dp = FUNC5(tx);
	objset_t *mos = dp->dp_meta_objset;
	struct drr_begin *drrb = drba->drba_cookie->drc_drrb;
	const char *tofs = drba->drba_cookie->drc_tofs;
	dsl_dataset_t *ds, *newds;
	uint64_t dsobj;
	int error;
	uint64_t crflags = 0;

	if (drrb->drr_flags & DRR_FLAG_CI_DATA)
		crflags |= DS_FLAG_CI_DATASET;

	error = FUNC8(dp, tofs, FTAG, &ds);
	if (error == 0) {
		/* create temporary clone */
		dsl_dataset_t *snap = NULL;
		if (drba->drba_snapobj != 0) {
			FUNC2(FUNC9(dp,
			    drba->drba_snapobj, FTAG, &snap));
		}
		dsobj = FUNC6(ds->ds_dir, recv_clone_name,
		    snap, crflags, drba->drba_cred, tx);
		if (drba->drba_snapobj != 0)
			FUNC12(snap, FTAG);
		FUNC12(ds, FTAG);
	} else {
		dsl_dir_t *dd;
		const char *tail;
		dsl_dataset_t *origin = NULL;

		FUNC2(FUNC14(dp, tofs, FTAG, &dd, &tail));

		if (drba->drba_origin != NULL) {
			FUNC2(FUNC8(dp, drba->drba_origin,
			    FTAG, &origin));
		}

		/* Create new dataset. */
		dsobj = FUNC6(dd,
		    FUNC20(tofs, '/') + 1,
		    origin, crflags, drba->drba_cred, tx);
		if (origin != NULL)
			FUNC12(origin, FTAG);
		FUNC15(dd, FTAG);
		drba->drba_cookie->drc_newfs = B_TRUE;
	}
	FUNC2(FUNC10(dp, dsobj, dmu_recv_tag, &newds));

	if (drba->drba_cookie->drc_resumable) {
		FUNC13(newds, tx);
		if (drrb->drr_fromguid != 0) {
			FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_FROMGUID,
			    8, 1, &drrb->drr_fromguid, tx));
		}
		FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_TOGUID,
		    8, 1, &drrb->drr_toguid, tx));
		FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_TONAME,
		    1, FUNC19(drrb->drr_toname) + 1, drrb->drr_toname, tx));
		uint64_t one = 1;
		uint64_t zero = 0;
		FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_OBJECT,
		    8, 1, &one, tx));
		FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_OFFSET,
		    8, 1, &zero, tx));
		FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_BYTES,
		    8, 1, &zero, tx));
		if (FUNC1(drrb->drr_versioninfo) &
		    DMU_BACKUP_FEATURE_LARGE_BLOCKS) {
			FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_LARGEBLOCK,
			    8, 1, &one, tx));
		}
		if (FUNC1(drrb->drr_versioninfo) &
		    DMU_BACKUP_FEATURE_EMBED_DATA) {
			FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_EMBEDOK,
			    8, 1, &one, tx));
		}
		if (FUNC1(drrb->drr_versioninfo) &
		    DMU_BACKUP_FEATURE_COMPRESSED) {
			FUNC2(FUNC21(mos, dsobj, DS_FIELD_RESUME_COMPRESSOK,
			    8, 1, &one, tx));
		}
	}

	FUNC3(newds->ds_dbuf, tx);
	FUNC11(newds)->ds_flags |= DS_FLAG_INCONSISTENT;

	/*
	 * If we actually created a non-clone, we need to create the
	 * objset in our new dataset.
	 */
	FUNC16(&newds->ds_bp_rwlock, RW_READER, FTAG);
	if (FUNC0(FUNC7(newds))) {
		(void) FUNC4(dp->dp_spa,
		    newds, FUNC7(newds), drrb->drr_type, tx);
	}
	FUNC17(&newds->ds_bp_rwlock, FTAG);

	drba->drba_cookie->drc_ds = newds;

	FUNC18(newds, "receive", tx, "");
}