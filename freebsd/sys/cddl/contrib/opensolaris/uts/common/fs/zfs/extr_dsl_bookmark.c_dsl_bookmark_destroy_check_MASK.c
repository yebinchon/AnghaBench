#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_6__ {int /*<<< orphan*/  dbda_errors; int /*<<< orphan*/  dbda_success; int /*<<< orphan*/  dbda_bmarks; } ;
typedef  TYPE_2__ dsl_bookmark_destroy_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_BOOKMARKS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char**) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(void *arg, dmu_tx_t *tx)
{
	dsl_bookmark_destroy_arg_t *dbda = arg;
	dsl_pool_t *dp = FUNC2(tx);
	int rv = 0;

	FUNC0(FUNC8(dbda->dbda_success));
	FUNC0(FUNC8(dbda->dbda_errors));

	if (!FUNC11(dp->dp_spa, SPA_FEATURE_BOOKMARKS))
		return (0);

	for (nvpair_t *pair = FUNC9(dbda->dbda_bmarks, NULL);
	    pair != NULL; pair = FUNC9(dbda->dbda_bmarks, pair)) {
		const char *fullname = FUNC10(pair);
		dsl_dataset_t *ds;
		zfs_bookmark_phys_t bm;
		int error;
		char *shortname;

		error = FUNC3(dp, fullname, &ds,
		    FTAG, &shortname);
		if (error == ENOENT) {
			/* ignore it; the bookmark is "already destroyed" */
			continue;
		}
		if (error == 0) {
			error = FUNC4(ds, shortname, &bm);
			FUNC5(ds, FTAG);
			if (error == ESRCH) {
				/*
				 * ignore it; the bookmark is
				 * "already destroyed"
				 */
				continue;
			}
		}
		if (error == 0) {
			if (FUNC1(tx)) {
				FUNC6(dbda->dbda_success,
				    fullname);
			}
		} else {
			FUNC7(dbda->dbda_errors, fullname, error);
			rv = error;
		}
	}
	return (rv);
}