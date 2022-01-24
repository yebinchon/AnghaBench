#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  recvname ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  ds_bp_rwlock; int /*<<< orphan*/  ds_dbuf; int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {TYPE_1__* drba_cookie; } ;
typedef  TYPE_3__ dmu_recv_begin_arg_t ;
struct TYPE_15__ {int /*<<< orphan*/  ds_flags; } ;
struct TYPE_12__ {char* drc_tofs; TYPE_2__* drc_ds; int /*<<< orphan*/  drc_newfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DS_FLAG_INCONSISTENT ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dmu_recv_tag ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_6__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* recv_clone_name ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC15(void *arg, dmu_tx_t *tx)
{
	dmu_recv_begin_arg_t *drba = arg;
	dsl_pool_t *dp = FUNC5(tx);
	const char *tofs = drba->drba_cookie->drc_tofs;
	dsl_dataset_t *ds;
	uint64_t dsobj;
	/* 6 extra bytes for /%recv */
	char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];

	(void) FUNC13(recvname, sizeof (recvname), "%s/%s",
	    tofs, recv_clone_name);

	if (FUNC7(dp, recvname, FTAG, &ds) != 0) {
		/* %recv does not exist; continue in tofs */
		FUNC3(FUNC7(dp, tofs, FTAG, &ds));
		drba->drba_cookie->drc_newfs = B_TRUE;
	}

	/* clear the inconsistent flag so that we can own it */
	FUNC0(FUNC2(ds));
	FUNC4(ds->ds_dbuf, tx);
	FUNC9(ds)->ds_flags &= ~DS_FLAG_INCONSISTENT;
	dsobj = ds->ds_object;
	FUNC10(ds, FTAG);

	FUNC3(FUNC8(dp, dsobj, dmu_recv_tag, &ds));

	FUNC4(ds->ds_dbuf, tx);
	FUNC9(ds)->ds_flags |= DS_FLAG_INCONSISTENT;

	FUNC11(&ds->ds_bp_rwlock, RW_READER, FTAG);
	FUNC0(!FUNC1(FUNC6(ds)));
	FUNC12(&ds->ds_bp_rwlock, FTAG);

	drba->drba_cookie->drc_ds = ds;

	FUNC14(ds, "resume receive", tx, "");
}