#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  dp_mos_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int FUNC1 (int) ; 
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  ZPOOL_HIST_WHO ; 
 int /*<<< orphan*/  ZPOOL_HIST_ZONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_history_log_sync ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(spa_t *spa, nvlist_t *nvl)
{
	int err = 0;
	dmu_tx_t *tx;
	nvlist_t *nvarg;

	if (FUNC13(spa) < SPA_VERSION_ZPOOL_HISTORY)
		return (EINVAL);

	if (FUNC13(spa) < SPA_VERSION_ZPOOL_HISTORY || !FUNC14(spa))
		return (FUNC1(EINVAL));

	tx = FUNC6(FUNC11(spa)->dp_mos_dir);
	err = FUNC4(tx, TXG_WAIT);
	if (err) {
		FUNC3(tx);
		return (err);
	}

	nvarg = FUNC10(nvl);
	if (FUNC12() != NULL) {
		FUNC8(nvarg, ZPOOL_HIST_ZONE,
		    FUNC12());
	}
	FUNC9(nvarg, ZPOOL_HIST_WHO, FUNC2(FUNC0()));

	/* Kick this off asynchronously; errors are ignored. */
	FUNC7(FUNC11(spa), spa_history_log_sync,
	    nvarg, 0, ZFS_SPACE_CHECK_NONE, tx);
	FUNC5(tx);

	/* spa_history_log_sync will free nvl */
	return (err);

}