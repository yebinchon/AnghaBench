#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  zcs_bytes; } ;
struct TYPE_10__ {scalar_t__ spa_deflate; scalar_t__ spa_creation_version; scalar_t__ spa_errlog_last; scalar_t__ spa_errlog_scrub; scalar_t__ spa_history; scalar_t__ spa_all_vdev_zaps; scalar_t__ spa_delegation; scalar_t__ spa_pool_props_object; scalar_t__ spa_bootfs; scalar_t__ spa_failmode; scalar_t__ spa_autoexpand; scalar_t__ spa_dedup_ditto; int spa_autoreplace; scalar_t__ spa_missing_tvds; scalar_t__ spa_load_state; int /*<<< orphan*/ * spa_root_vdev; int /*<<< orphan*/  spa_avz_action; int /*<<< orphan*/  spa_config_object; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_deferred_bpobj; TYPE_1__ spa_cksum_salt; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVZ_ACTION_DESTROY ; 
 int /*<<< orphan*/  AVZ_ACTION_INITIALIZE ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_POOL_CHECKSUM_SALT ; 
 int /*<<< orphan*/  DMU_POOL_CREATION_VERSION ; 
 int /*<<< orphan*/  DMU_POOL_DEFLATE ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_ERRLOG_LAST ; 
 int /*<<< orphan*/  DMU_POOL_ERRLOG_SCRUB ; 
 int /*<<< orphan*/  DMU_POOL_HISTORY ; 
 int /*<<< orphan*/  DMU_POOL_PROPS ; 
 int /*<<< orphan*/  DMU_POOL_SYNC_BPOBJ ; 
 int /*<<< orphan*/  DMU_POOL_VDEV_ZAP_MAP ; 
 int /*<<< orphan*/  EIO ; 
 int ENOENT ; 
 scalar_t__ SPA_LOAD_TRYIMPORT ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ZIO_FAILURE_MODE_CONTINUE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS ; 
 int /*<<< orphan*/  ZPOOL_PROP_AUTOEXPAND ; 
 int /*<<< orphan*/  ZPOOL_PROP_AUTOREPLACE ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTFS ; 
 int /*<<< orphan*/  ZPOOL_PROP_DEDUPDITTO ; 
 int /*<<< orphan*/  ZPOOL_PROP_DELEGATION ; 
 int /*<<< orphan*/  ZPOOL_PROP_FAILUREMODE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(spa_t *spa)
{
	int error = 0;
	uint64_t obj;
	vdev_t *rvd = spa->spa_root_vdev;

	/* Grab the secret checksum salt from the MOS. */
	error = FUNC13(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_CHECKSUM_SALT, 1,
	    sizeof (spa->spa_cksum_salt.zcs_bytes),
	    spa->spa_cksum_salt.zcs_bytes);
	if (error == ENOENT) {
		/* Generate a new salt for subsequent use */
		(void) FUNC6(spa->spa_cksum_salt.zcs_bytes,
		    sizeof (spa->spa_cksum_salt.zcs_bytes));
	} else if (error != 0) {
		FUNC8(spa, "unable to retrieve checksum salt from "
		    "MOS [error=%d]", error);
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	}

	if (FUNC7(spa, DMU_POOL_SYNC_BPOBJ, &obj, B_TRUE) != 0)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	error = FUNC2(&spa->spa_deferred_bpobj, spa->spa_meta_objset, obj);
	if (error != 0) {
		FUNC8(spa, "error opening deferred-frees bpobj "
		    "[error=%d]", error);
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	}

	/*
	 * Load the bit that tells us to use the new accounting function
	 * (raid-z deflation).  If we have an older pool, this will not
	 * be present.
	 */
	error = FUNC7(spa, DMU_POOL_DEFLATE, &spa->spa_deflate, B_FALSE);
	if (error != 0 && error != ENOENT)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

	error = FUNC7(spa, DMU_POOL_CREATION_VERSION,
	    &spa->spa_creation_version, B_FALSE);
	if (error != 0 && error != ENOENT)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

	/*
	 * Load the persistent error log.  If we have an older pool, this will
	 * not be present.
	 */
	error = FUNC7(spa, DMU_POOL_ERRLOG_LAST, &spa->spa_errlog_last,
	    B_FALSE);
	if (error != 0 && error != ENOENT)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

	error = FUNC7(spa, DMU_POOL_ERRLOG_SCRUB,
	    &spa->spa_errlog_scrub, B_FALSE);
	if (error != 0 && error != ENOENT)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

	/*
	 * Load the history object.  If we have an older pool, this
	 * will not be present.
	 */
	error = FUNC7(spa, DMU_POOL_HISTORY, &spa->spa_history, B_FALSE);
	if (error != 0 && error != ENOENT)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

	/*
	 * Load the per-vdev ZAP map. If we have an older pool, this will not
	 * be present; in this case, defer its creation to a later time to
	 * avoid dirtying the MOS this early / out of sync context. See
	 * spa_sync_config_object.
	 */

	/* The sentinel is only available in the MOS config. */
	nvlist_t *mos_config;
	if (FUNC3(spa, spa->spa_config_object, &mos_config) != 0) {
		FUNC8(spa, "unable to retrieve MOS config");
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	}

	error = FUNC7(spa, DMU_POOL_VDEV_ZAP_MAP,
	    &spa->spa_all_vdev_zaps, B_FALSE);

	if (error == ENOENT) {
		FUNC1(!FUNC4(mos_config,
		    ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS));
		spa->spa_avz_action = AVZ_ACTION_INITIALIZE;
		FUNC0(FUNC12(spa->spa_root_vdev));
	} else if (error != 0) {
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	} else if (!FUNC4(mos_config, ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS)) {
		/*
		 * An older version of ZFS overwrote the sentinel value, so
		 * we have orphaned per-vdev ZAPs in the MOS. Defer their
		 * destruction to later; see spa_sync_config_object.
		 */
		spa->spa_avz_action = AVZ_ACTION_DESTROY;
		/*
		 * We're assuming that no vdevs have had their ZAPs created
		 * before this. Better be sure of it.
		 */
		FUNC0(FUNC12(spa->spa_root_vdev));
	}
	FUNC5(mos_config);

	spa->spa_delegation = FUNC14(ZPOOL_PROP_DELEGATION);

	error = FUNC7(spa, DMU_POOL_PROPS, &spa->spa_pool_props_object,
	    B_FALSE);
	if (error && error != ENOENT)
		return (FUNC11(rvd, VDEV_AUX_CORRUPT_DATA, EIO));

	if (error == 0) {
		uint64_t autoreplace;

		FUNC10(spa, ZPOOL_PROP_BOOTFS, &spa->spa_bootfs);
		FUNC10(spa, ZPOOL_PROP_AUTOREPLACE, &autoreplace);
		FUNC10(spa, ZPOOL_PROP_DELEGATION, &spa->spa_delegation);
		FUNC10(spa, ZPOOL_PROP_FAILUREMODE, &spa->spa_failmode);
		FUNC10(spa, ZPOOL_PROP_AUTOEXPAND, &spa->spa_autoexpand);
		FUNC10(spa, ZPOOL_PROP_DEDUPDITTO,
		    &spa->spa_dedup_ditto);

		spa->spa_autoreplace = (autoreplace != 0);
	}

	/*
	 * If we are importing a pool with missing top-level vdevs,
	 * we enforce that the pool doesn't panic or get suspended on
	 * error since the likelihood of missing data is extremely high.
	 */
	if (spa->spa_missing_tvds > 0 &&
	    spa->spa_failmode != ZIO_FAILURE_MODE_CONTINUE &&
	    spa->spa_load_state != SPA_LOAD_TRYIMPORT) {
		FUNC9(spa, "forcing failmode to 'continue' "
		    "as some top level vdevs are missing");
		spa->spa_failmode = ZIO_FAILURE_MODE_CONTINUE;
	}

	return (0);
}