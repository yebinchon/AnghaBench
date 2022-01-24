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
struct TYPE_10__ {int /*<<< orphan*/  spa_scrub_reopen; int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;
typedef  scalar_t__ pool_scan_func_t ;
struct TYPE_11__ {int /*<<< orphan*/  scn_dp; } ;
typedef  TYPE_2__ dsl_scan_t ;
struct TYPE_12__ {TYPE_2__* dp_scan; TYPE_1__* dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ECANCELED ; 
 int /*<<< orphan*/  ESC_ZFS_SCRUB_RESUME ; 
 scalar_t__ POOL_SCAN_SCRUB ; 
 int /*<<< orphan*/  POOL_SCRUB_NORMAL ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_EXTRA_RESERVED ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  dsl_scan_setup_check ; 
 int /*<<< orphan*/  dsl_scan_setup_sync ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(dsl_pool_t *dp, pool_scan_func_t func)
{
	spa_t *spa = dp->dp_spa;
	dsl_scan_t *scn = dp->dp_scan;

	/*
	 * Purge all vdev caches and probe all devices.  We do this here
	 * rather than in sync context because this requires a writer lock
	 * on the spa_config lock, which we can't do from sync context.  The
	 * spa_scrub_reopen flag indicates that vdev_open() should not
	 * attempt to start another scrub.
	 */
	FUNC6(spa, SCL_NONE);
	spa->spa_scrub_reopen = B_TRUE;
	FUNC8(spa->spa_root_vdev);
	spa->spa_scrub_reopen = B_FALSE;
	(void) FUNC7(spa, NULL, 0);

	if (func == POOL_SCAN_SCRUB && FUNC1(scn)) {
		/* got scrub start cmd, resume paused scrub */
		int err = FUNC2(scn->scn_dp,
		    POOL_SCRUB_NORMAL);
		if (err == 0) {
			FUNC4(spa, NULL, NULL, ESC_ZFS_SCRUB_RESUME);
			return (ECANCELED);
		}
		return (FUNC0(err));
	}

	return (FUNC3(FUNC5(spa), dsl_scan_setup_check,
	    dsl_scan_setup_sync, &func, 0, ZFS_SPACE_CHECK_EXTRA_RESERVED));
}