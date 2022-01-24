#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int spa_import_flags; scalar_t__ spa_ccw_fail_time; int /*<<< orphan*/  spa_config_list; int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/ * spa_config; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_19__ {int /*<<< orphan*/ * scd_path; } ;
typedef  TYPE_2__ spa_config_dirent_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  ESC_ZFS_CONFIG_SYNC ; 
 int /*<<< orphan*/  FM_EREPORT_ZFS_CONFIG_CACHE_WRITE ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ POOL_STATE_ACTIVE ; 
 int /*<<< orphan*/  SPA_ASYNC_CONFIG_UPDATE ; 
 int ZFS_IMPORT_TEMP_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * rootdir ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_config_generation ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int spa_mode_global ; 
 char* FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 TYPE_1__* FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC25(spa_t *target, boolean_t removing, boolean_t postsysevent)
{
	spa_config_dirent_t *dp, *tdp;
	nvlist_t *nvl;
	boolean_t ccw_failure;
	int error;
	char *pool_name;

	FUNC0(FUNC1(&spa_namespace_lock));

	if (rootdir == NULL || !(spa_mode_global & FWRITE))
		return;

	/*
	 * Iterate over all cachefiles for the pool, past or present.  When the
	 * cachefile is changed, the new one is pushed onto this list, allowing
	 * us to update previous cachefiles that no longer contain this pool.
	 */
	ccw_failure = B_FALSE;
	for (dp = FUNC7(&target->spa_config_list); dp != NULL;
	    dp = FUNC8(&target->spa_config_list, dp)) {
		spa_t *spa = NULL;
		if (dp->scd_path == NULL)
			continue;

		/*
		 * Iterate over all pools, adding any matching pools to 'nvl'.
		 */
		nvl = NULL;
		while ((spa = FUNC19(spa)) != NULL) {
			nvlist_t *nvroot = NULL;
			/*
			 * Skip over our own pool if we're about to remove
			 * ourselves from the spa namespace or any pool that
			 * is readonly. Since we cannot guarantee that a
			 * readonly pool would successfully import upon reboot,
			 * we don't allow them to be written to the cache file.
			 */
			if ((spa == target && removing) ||
			    (FUNC20(spa) == POOL_STATE_ACTIVE &&
			    !FUNC22(spa)))
				continue;

			FUNC10(&spa->spa_props_lock);
			tdp = FUNC7(&spa->spa_config_list);
			if (spa->spa_config == NULL ||
			    tdp->scd_path == NULL ||
			    FUNC23(tdp->scd_path, dp->scd_path) != 0) {
				FUNC11(&spa->spa_props_lock);
				continue;
			}

			if (nvl == NULL)
				nvl = FUNC3();

			if (spa->spa_import_flags & ZFS_IMPORT_TEMP_NAME) {
				pool_name = FUNC4(
				    spa->spa_config, ZPOOL_CONFIG_POOL_NAME);
			} else {
				pool_name = FUNC18(spa);
			}

			FUNC2(nvl, pool_name,
			    spa->spa_config);
			FUNC11(&spa->spa_props_lock);

			if (FUNC13(nvl, pool_name, &nvroot) == 0)
				FUNC15(nvroot);
		}

		error = FUNC16(dp, nvl);
		if (error != 0)
			ccw_failure = B_TRUE;
		FUNC12(nvl);
	}

	if (ccw_failure) {
		/*
		 * Keep trying so that configuration data is
		 * written if/when any temporary filesystem
		 * resource issues are resolved.
		 */
		if (target->spa_ccw_fail_time == 0) {
			FUNC24(FM_EREPORT_ZFS_CONFIG_CACHE_WRITE,
			    target, NULL, NULL, 0, 0);
		}
		target->spa_ccw_fail_time = FUNC5();
		FUNC14(target, SPA_ASYNC_CONFIG_UPDATE);
	} else {
		/*
		 * Do not rate limit future attempts to update
		 * the config cache.
		 */
		target->spa_ccw_fail_time = 0;
	}

	/*
	 * Remove any config entries older than the current one.
	 */
	dp = FUNC7(&target->spa_config_list);
	while ((tdp = FUNC8(&target->spa_config_list, dp)) != NULL) {
		FUNC9(&target->spa_config_list, tdp);
		if (tdp->scd_path != NULL)
			FUNC21(tdp->scd_path);
		FUNC6(tdp, sizeof (spa_config_dirent_t));
	}

	spa_config_generation++;

	if (postsysevent)
		FUNC17(target, NULL, NULL, ESC_ZFS_CONFIG_SYNC);
}