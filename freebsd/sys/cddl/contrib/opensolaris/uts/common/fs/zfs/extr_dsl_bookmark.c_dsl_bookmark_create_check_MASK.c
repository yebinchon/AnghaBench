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
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_6__ {int /*<<< orphan*/  dbca_errors; int /*<<< orphan*/  dbca_bmarks; } ;
typedef  TYPE_2__ dsl_bookmark_create_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_BOOKMARKS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(void *arg, dmu_tx_t *tx)
{
	dsl_bookmark_create_arg_t *dbca = arg;
	dsl_pool_t *dp = FUNC1(tx);
	int rv = 0;

	if (!FUNC9(dp->dp_spa, SPA_FEATURE_BOOKMARKS))
		return (FUNC0(ENOTSUP));

	for (nvpair_t *pair = FUNC7(dbca->dbca_bmarks, NULL);
	    pair != NULL; pair = FUNC7(dbca->dbca_bmarks, pair)) {
		dsl_dataset_t *snapds;
		int error;

		/* note: validity of nvlist checked by ioctl layer */
		error = FUNC3(dp, FUNC6(pair),
		    FTAG, &snapds);
		if (error == 0) {
			error = FUNC2(snapds,
			    FUNC8(pair), tx);
			FUNC4(snapds, FTAG);
		}
		if (error != 0) {
			FUNC5(dbca->dbca_errors,
			    FUNC8(pair), error);
			rv = error;
		}
	}

	return (rv);
}