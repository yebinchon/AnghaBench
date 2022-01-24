#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_object; scalar_t__ ds_bookmarks; int /*<<< orphan*/  ds_dbuf; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_12__ {int /*<<< orphan*/  dbda_success; } ;
typedef  TYPE_3__ dsl_bookmark_destroy_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIELD_BOOKMARK_NAMES ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_BOOKMARKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *arg, dmu_tx_t *tx)
{
	dsl_bookmark_destroy_arg_t *dbda = arg;
	dsl_pool_t *dp = FUNC2(tx);
	objset_t *mos = dp->dp_meta_objset;

	for (nvpair_t *pair = FUNC6(dbda->dbda_success, NULL);
	    pair != NULL; pair = FUNC6(dbda->dbda_success, pair)) {
		dsl_dataset_t *ds;
		char *shortname;
		uint64_t zap_cnt;

		FUNC0(FUNC3(dp, FUNC7(pair),
		    &ds, FTAG, &shortname));
		FUNC0(FUNC4(ds, shortname, tx));

		/*
		 * If all of this dataset's bookmarks have been destroyed,
		 * free the zap object and decrement the feature's use count.
		 */
		FUNC0(FUNC10(mos, ds->ds_bookmarks,
		    &zap_cnt));
		if (zap_cnt == 0) {
			FUNC1(ds->ds_dbuf, tx);
			FUNC0(FUNC11(mos, ds->ds_bookmarks, tx));
			ds->ds_bookmarks = 0;
			FUNC8(dp->dp_spa, SPA_FEATURE_BOOKMARKS, tx);
			FUNC0(FUNC12(mos, ds->ds_object,
			    DS_FIELD_BOOKMARK_NAMES, tx));
		}

		FUNC9(ds, "remove bookmark", tx,
		    "name=%s", shortname);

		FUNC5(ds, FTAG);
	}
}