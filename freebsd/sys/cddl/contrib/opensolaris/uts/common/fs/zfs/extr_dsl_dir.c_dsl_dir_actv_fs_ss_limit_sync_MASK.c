#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_FS_SS_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg, dmu_tx_t *tx)
{
	char *ddname = (char *)arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;
	spa_t *spa;

	FUNC0(FUNC3(dp, ddname, FTAG, &ds));

	spa = FUNC2(ds);

	if (!FUNC7(spa, SPA_FEATURE_FS_SS_LIMIT)) {
		/*
		 * Since the feature was not active and we're now setting a
		 * limit, increment the feature-active counter so that the
		 * feature becomes active for the first time.
		 *
		 * We are already in a sync task so we can update the MOS.
		 */
		FUNC6(spa, SPA_FEATURE_FS_SS_LIMIT, tx);
	}

	/*
	 * Since we are now setting a non-UINT64_MAX limit on the filesystem,
	 * we need to ensure the counts are correct. Descend down the tree from
	 * this point and update all of the counts to be accurate.
	 */
	FUNC5(ds->ds_dir, tx);

	FUNC4(ds, FTAG);
}