#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_24__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  recvname ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_29__ {TYPE_21__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_31__ {scalar_t__ ds_prev_snap_obj; } ;
struct TYPE_30__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_AVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_COMPRESSRATIO ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  ZFS_PROP_CREATION ; 
 int /*<<< orphan*/  ZFS_PROP_DEFER_DESTROY ; 
 int /*<<< orphan*/  ZFS_PROP_GUID ; 
 int /*<<< orphan*/  ZFS_PROP_LOGICALREFERENCED ; 
 int /*<<< orphan*/  ZFS_PROP_OBJSETID ; 
 int /*<<< orphan*/  ZFS_PROP_PREV_SNAP ; 
 int /*<<< orphan*/  ZFS_PROP_REFERENCED ; 
 int /*<<< orphan*/  ZFS_PROP_REFQUOTA ; 
 int /*<<< orphan*/  ZFS_PROP_REFRATIO ; 
 int /*<<< orphan*/  ZFS_PROP_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_UNIQUE ; 
 int /*<<< orphan*/  ZFS_PROP_USED ; 
 int /*<<< orphan*/  ZFS_PROP_USERREFS ; 
 int /*<<< orphan*/  ZFS_PROP_WRITTEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 TYPE_24__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_21__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* recv_clone_name ; 
 int FUNC29 (char*,char*,int) ; 

void
FUNC30(dsl_dataset_t *ds, nvlist_t *nv)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;

	FUNC0(FUNC24(dp));

	FUNC26(nv, ZFS_PROP_REFRATIO,
	    FUNC18(ds));
	FUNC26(nv, ZFS_PROP_LOGICALREFERENCED,
	    FUNC13(ds));
	FUNC26(nv, ZFS_PROP_COMPRESSRATIO,
	    FUNC8(ds));
	FUNC26(nv, ZFS_PROP_USED,
	    FUNC21(ds));

	if (ds->ds_is_snapshot) {
		FUNC27(ds, nv);
	} else {
		char buf[ZFS_MAX_DATASET_NAME_LEN];
		if (FUNC15(ds, buf) == 0)
			FUNC25(nv, ZFS_PROP_PREV_SNAP,
			    buf);
		FUNC6(ds->ds_dir, nv);
	}

	FUNC26(nv, ZFS_PROP_AVAILABLE,
	    FUNC7(ds));
	FUNC26(nv, ZFS_PROP_REFERENCED,
	    FUNC16(ds));
	FUNC26(nv, ZFS_PROP_CREATION,
	    FUNC9(ds));
	FUNC26(nv, ZFS_PROP_CREATETXG,
	    FUNC10(ds));
	FUNC26(nv, ZFS_PROP_REFQUOTA,
	    FUNC17(ds));
	FUNC26(nv, ZFS_PROP_REFRESERVATION,
	    FUNC19(ds));
	FUNC26(nv, ZFS_PROP_GUID,
	    FUNC12(ds));
	FUNC26(nv, ZFS_PROP_UNIQUE,
	    FUNC20(ds));
	FUNC26(nv, ZFS_PROP_OBJSETID,
	    FUNC14(ds));
	FUNC26(nv, ZFS_PROP_USERREFS,
	    FUNC22(ds));
	FUNC26(nv, ZFS_PROP_DEFER_DESTROY,
	    FUNC11(ds));

	if (FUNC4(ds)->ds_prev_snap_obj != 0) {
		uint64_t written;
		if (FUNC23(ds, &written) == 0) {
			FUNC26(nv, ZFS_PROP_WRITTEN,
			    written);
		}
	}

	if (!FUNC2(ds)) {
		/*
		 * A failed "newfs" (e.g. full) resumable receive leaves
		 * the stats set on this dataset.  Check here for the prop.
		 */
		FUNC28(ds, nv);

		/*
		 * A failed incremental resumable receive leaves the
		 * stats set on our child named "%recv".  Check the child
		 * for the prop.
		 */
		/* 6 extra bytes for /%recv */
		char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];
		dsl_dataset_t *recv_ds;
		FUNC3(ds, recvname);
		if (FUNC29(recvname, "/", sizeof (recvname)) <
		    sizeof (recvname) &&
		    FUNC29(recvname, recv_clone_name, sizeof (recvname)) <
		    sizeof (recvname) &&
		    FUNC1(dp, recvname, FTAG, &recv_ds) == 0) {
			FUNC28(recv_ds, nv);
			FUNC5(recv_ds, FTAG);
		}
	}
}