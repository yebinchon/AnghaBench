#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_13__ {int /*<<< orphan*/ * dp_meta_objset; int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_14__ {int /*<<< orphan*/  dd_object; TYPE_1__* dd_pool; } ;
typedef  TYPE_2__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  cnt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DD_FIELD_FILESYSTEM_COUNT ; 
 int /*<<< orphan*/  DD_FIELD_SNAPSHOT_COUNT ; 
 int DS_CREATE_FLAG_NODIRTY ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_FS_SS_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *) ; 

uint64_t
FUNC14(dsl_dir_t *pdd, const char *lastname,
    dsl_dataset_t *origin, uint64_t flags, cred_t *cr, dmu_tx_t *tx)
{
	dsl_pool_t *dp = pdd->dd_pool;
	uint64_t dsobj, ddobj;
	dsl_dir_t *dd;

	FUNC0(FUNC2(tx));
	FUNC0(lastname[0] != '@');

	ddobj = FUNC8(dp, pdd, lastname, tx);
	FUNC1(FUNC9(dp, ddobj, lastname, FTAG, &dd));

	dsobj = FUNC3(dd, origin,
	    flags & ~DS_CREATE_FLAG_NODIRTY, tx);

	FUNC7(dd, tx, cr);

	/*
	 * Since we're creating a new node we know it's a leaf, so we can
	 * initialize the counts if the limit feature is active.
	 */
	if (FUNC12(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT)) {
		uint64_t cnt = 0;
		objset_t *os = dd->dd_pool->dp_meta_objset;

		FUNC11(dd, tx);
		FUNC1(FUNC13(os, dd->dd_object, DD_FIELD_FILESYSTEM_COUNT,
		    sizeof (cnt), 1, &cnt, tx));
		FUNC1(FUNC13(os, dd->dd_object, DD_FIELD_SNAPSHOT_COUNT,
		    sizeof (cnt), 1, &cnt, tx));
	}

	FUNC10(dd, FTAG);

	/*
	 * If we are creating a clone, make sure we zero out any stale
	 * data from the origin snapshots zil header.
	 */
	if (origin != NULL && !(flags & DS_CREATE_FLAG_NODIRTY)) {
		dsl_dataset_t *ds;

		FUNC1(FUNC4(dp, dsobj, FTAG, &ds));
		FUNC6(ds, tx);
		FUNC5(ds, FTAG);
	}

	return (dsobj);
}