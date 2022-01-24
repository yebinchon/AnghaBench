#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ zlp_txg; } ;
typedef  TYPE_2__ zpool_load_policy_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_17__ {int /*<<< orphan*/  ub_timestamp; } ;
struct TYPE_19__ {scalar_t__ spa_load_max_txg; scalar_t__ spa_bootfs; int /*<<< orphan*/  spa_load_info; TYPE_1__ spa_uberblock; int /*<<< orphan*/ * spa_root_vdev; int /*<<< orphan*/  spa_config_source; int /*<<< orphan*/  spa_extreme_rewind; int /*<<< orphan*/  spa_config; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int EEXIST ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SPA_CONFIG_SRC_CACHEFILE ; 
 int /*<<< orphan*/  SPA_CONFIG_SRC_SCAN ; 
 int /*<<< orphan*/  SPA_IMPORT_EXISTING ; 
 int /*<<< orphan*/  SPA_LOAD_TRYIMPORT ; 
 int /*<<< orphan*/  TRYIMPORT_NAME ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_BOOTFS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CACHEFILE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TIMESTAMP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 char* FUNC24 (char*,char) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,TYPE_2__*) ; 

nvlist_t *
FUNC28(nvlist_t *tryconfig)
{
	nvlist_t *config = NULL;
	char *poolname, *cachefile;
	spa_t *spa;
	uint64_t state;
	int error;
	zpool_load_policy_t policy;

	if (FUNC9(tryconfig, ZPOOL_CONFIG_POOL_NAME, &poolname))
		return (NULL);

	if (FUNC10(tryconfig, ZPOOL_CONFIG_POOL_STATE, &state))
		return (NULL);

	/*
	 * Create and initialize the spa structure.
	 */
	FUNC4(&spa_namespace_lock);
	spa = FUNC13(TRYIMPORT_NAME, tryconfig, NULL);
	FUNC12(spa, FREAD);

	/*
	 * Rewind pool if a max txg was provided.
	 */
	FUNC27(spa->spa_config, &policy);
	if (policy.zlp_txg != UINT64_MAX) {
		spa->spa_load_max_txg = policy.zlp_txg;
		spa->spa_extreme_rewind = B_TRUE;
		FUNC26("spa_tryimport: importing %s, max_txg=%lld",
		    poolname, (longlong_t)policy.zlp_txg);
	} else {
		FUNC26("spa_tryimport: importing %s", poolname);
	}

	if (FUNC9(tryconfig, ZPOOL_CONFIG_CACHEFILE, &cachefile)
	    == 0) {
		FUNC26("spa_tryimport: using cachefile '%s'", cachefile);
		spa->spa_config_source = SPA_CONFIG_SRC_CACHEFILE;
	} else {
		spa->spa_config_source = SPA_CONFIG_SRC_SCAN;
	}

	error = FUNC20(spa, SPA_LOAD_TRYIMPORT, SPA_IMPORT_EXISTING);

	/*
	 * If 'tryconfig' was at least parsable, return the current config.
	 */
	if (spa->spa_root_vdev != NULL) {
		config = FUNC18(spa, NULL, -1ULL, B_TRUE);
		FUNC0(FUNC7(config, ZPOOL_CONFIG_POOL_NAME,
		    poolname) == 0);
		FUNC0(FUNC8(config, ZPOOL_CONFIG_POOL_STATE,
		    state) == 0);
		FUNC0(FUNC8(config, ZPOOL_CONFIG_TIMESTAMP,
		    spa->spa_uberblock.ub_timestamp) == 0);
		FUNC0(FUNC6(config, ZPOOL_CONFIG_LOAD_INFO,
		    spa->spa_load_info) == 0);

		/*
		 * If the bootfs property exists on this pool then we
		 * copy it out so that external consumers can tell which
		 * pools are bootable.
		 */
		if ((!error || error == EEXIST) && spa->spa_bootfs) {
			char *tmpname = FUNC2(MAXPATHLEN, KM_SLEEP);

			/*
			 * We have to play games with the name since the
			 * pool was opened as TRYIMPORT_NAME.
			 */
			if (FUNC1(FUNC21(spa),
			    spa->spa_bootfs, tmpname) == 0) {
				char *cp;
				char *dsname = FUNC2(MAXPATHLEN, KM_SLEEP);

				cp = FUNC24(tmpname, '/');
				if (cp == NULL) {
					(void) FUNC25(dsname, tmpname,
					    MAXPATHLEN);
				} else {
					(void) FUNC11(dsname, MAXPATHLEN,
					    "%s/%s", poolname, ++cp);
				}
				FUNC0(FUNC7(config,
				    ZPOOL_CONFIG_BOOTFS, dsname) == 0);
				FUNC3(dsname, MAXPATHLEN);
			}
			FUNC3(tmpname, MAXPATHLEN);
		}

		/*
		 * Add the list of hot spares and level 2 cache devices.
		 */
		FUNC16(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC15(spa, config);
		FUNC14(spa, config);
		FUNC17(spa, SCL_CONFIG, FTAG);
	}

	FUNC23(spa);
	FUNC19(spa);
	FUNC22(spa);
	FUNC5(&spa_namespace_lock);

	return (config);
}