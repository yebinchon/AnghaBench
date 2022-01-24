#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int zlp_rewind; int /*<<< orphan*/  zlp_txg; } ;
typedef  TYPE_1__ zpool_load_policy_t ;
struct TYPE_15__ {scalar_t__ spa_state; int spa_last_open_failed; int /*<<< orphan*/  spa_name; scalar_t__ spa_load_txg; scalar_t__ spa_last_ubsync_txg; int /*<<< orphan*/  spa_load_info; int /*<<< orphan*/ * spa_config; int /*<<< orphan*/  spa_config_source; } ;
typedef  TYPE_2__ spa_t ;
typedef  scalar_t__ spa_load_state_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 int EBADF ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ POOL_STATE_UNINITIALIZED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_CONFIG_SRC_CACHEFILE ; 
 scalar_t__ SPA_LOAD_OPEN ; 
 scalar_t__ SPA_LOAD_RECOVER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int ZPOOL_DO_REWIND ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC11 (char const*) ; 
 int /*<<< orphan*/  spa_mode_global ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(const char *pool, spa_t **spapp, void *tag, nvlist_t *nvpolicy,
    nvlist_t **config)
{
	spa_t *spa;
	spa_load_state_t state = SPA_LOAD_OPEN;
	int error;
	int locked = B_FALSE;
	int firstopen = B_FALSE;

	*spapp = NULL;

	/*
	 * As disgusting as this is, we need to support recursive calls to this
	 * function because dsl_dir_open() is called during spa_load(), and ends
	 * up calling spa_open() again.  The real fix is to figure out how to
	 * avoid dsl_dir_open() calling this in the first place.
	 */
	if (FUNC4(&spa_namespace_lock) != curthread) {
		FUNC2(&spa_namespace_lock);
		locked = B_TRUE;
	}

	if ((spa = FUNC11(pool)) == NULL) {
		if (locked)
			FUNC3(&spa_namespace_lock);
		return (FUNC0(ENOENT));
	}

	if (spa->spa_state == POOL_STATE_UNINITIALIZED) {
		zpool_load_policy_t policy;

		firstopen = B_TRUE;

		FUNC17(nvpolicy ? nvpolicy : spa->spa_config,
		    &policy);
		if (policy.zlp_rewind & ZPOOL_DO_REWIND)
			state = SPA_LOAD_RECOVER;

		FUNC7(spa, spa_mode_global);

		if (state != SPA_LOAD_RECOVER)
			spa->spa_last_ubsync_txg = spa->spa_load_txg = 0;
		spa->spa_config_source = SPA_CONFIG_SRC_CACHEFILE;

		FUNC16("spa_open_common: opening %s", pool);
		error = FUNC10(spa, state, policy.zlp_txg,
		    policy.zlp_rewind);

		if (error == EBADF) {
			/*
			 * If vdev_validate() returns failure (indicated by
			 * EBADF), it indicates that one of the vdevs indicates
			 * that the pool has been exported or destroyed.  If
			 * this is the case, the config cache is out of sync and
			 * we should remove the pool from the namespace.
			 */
			FUNC14(spa);
			FUNC9(spa);
			FUNC15(spa, B_TRUE, B_TRUE);
			FUNC13(spa);
			if (locked)
				FUNC3(&spa_namespace_lock);
			return (FUNC0(ENOENT));
		}

		if (error) {
			/*
			 * We can't open the pool, but we still have useful
			 * information: the state of each vdev after the
			 * attempted vdev_open().  Return this to the user.
			 */
			if (config != NULL && spa->spa_config) {
				FUNC1(FUNC6(spa->spa_config, config,
				    KM_SLEEP) == 0);
				FUNC1(FUNC5(*config,
				    ZPOOL_CONFIG_LOAD_INFO,
				    spa->spa_load_info) == 0);
			}
			FUNC14(spa);
			FUNC9(spa);
			spa->spa_last_open_failed = error;
			if (locked)
				FUNC3(&spa_namespace_lock);
			*spapp = NULL;
			return (error);
		}
	}

	FUNC12(spa, tag);

	if (config != NULL)
		*config = FUNC8(spa, NULL, -1ULL, B_TRUE);

	/*
	 * If we've recovered the pool, pass back any information we
	 * gathered while doing the load.
	 */
	if (state == SPA_LOAD_RECOVER) {
		FUNC1(FUNC5(*config, ZPOOL_CONFIG_LOAD_INFO,
		    spa->spa_load_info) == 0);
	}

	if (locked) {
		spa->spa_last_open_failed = 0;
		spa->spa_last_ubsync_txg = 0;
		spa->spa_load_txg = 0;
		FUNC3(&spa_namespace_lock);
#ifdef __FreeBSD__
#ifdef _KERNEL
		if (firstopen)
			zvol_create_minors(spa->spa_name);
#endif
#endif
	}

	*spapp = spa;

	return (0);
}