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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int spa_scrub_finished; int /*<<< orphan*/  spa_errlog_lock; int /*<<< orphan*/  spa_errlog_scrub; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_errlog_last; int /*<<< orphan*/  spa_dsl_pool; int /*<<< orphan*/  spa_errlist_lock; int /*<<< orphan*/  spa_errlist_last; int /*<<< orphan*/  spa_errlist_scrub; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int B_FALSE ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_ERRLOG_LAST ; 
 int /*<<< orphan*/  DMU_POOL_ERRLOG_SCRUB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC10(spa_t *spa, uint64_t txg)
{
	dmu_tx_t *tx;
	avl_tree_t scrub, last;
	int scrub_finished;

	FUNC5(&spa->spa_errlist_lock);

	/*
	 * Bail out early under normal circumstances.
	 */
	if (FUNC1(&spa->spa_errlist_scrub) == 0 &&
	    FUNC1(&spa->spa_errlist_last) == 0 &&
	    !spa->spa_scrub_finished) {
		FUNC6(&spa->spa_errlist_lock);
		return;
	}

	FUNC7(spa, &last, &scrub);
	scrub_finished = spa->spa_scrub_finished;
	spa->spa_scrub_finished = B_FALSE;

	FUNC6(&spa->spa_errlist_lock);
	FUNC5(&spa->spa_errlog_lock);

	tx = FUNC4(spa->spa_dsl_pool, txg);

	/*
	 * Sync out the current list of errors.
	 */
	FUNC8(spa, &last, &spa->spa_errlog_last, tx);

	/*
	 * Rotate the log if necessary.
	 */
	if (scrub_finished) {
		if (spa->spa_errlog_last != 0)
			FUNC0(FUNC2(spa->spa_meta_objset,
			    spa->spa_errlog_last, tx) == 0);
		spa->spa_errlog_last = spa->spa_errlog_scrub;
		spa->spa_errlog_scrub = 0;

		FUNC8(spa, &scrub, &spa->spa_errlog_last, tx);
	}

	/*
	 * Sync out any pending scrub errors.
	 */
	FUNC8(spa, &scrub, &spa->spa_errlog_scrub, tx);

	/*
	 * Update the MOS to reflect the new values.
	 */
	(void) FUNC9(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_ERRLOG_LAST, sizeof (uint64_t), 1,
	    &spa->spa_errlog_last, tx);
	(void) FUNC9(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_ERRLOG_SCRUB, sizeof (uint64_t), 1,
	    &spa->spa_errlog_scrub, tx);

	FUNC3(tx);

	FUNC6(&spa->spa_errlog_lock);
}