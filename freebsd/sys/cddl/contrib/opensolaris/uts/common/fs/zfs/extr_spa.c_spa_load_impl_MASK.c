#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_30__ {scalar_t__ ub_checkpoint_txg; } ;
struct TYPE_31__ {int spa_import_flags; scalar_t__ spa_config_source; scalar_t__ spa_load_state; scalar_t__ spa_load_max_txg; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_dsl_pool; int /*<<< orphan*/  spa_claim_max_txg; void* spa_sync_on; TYPE_1__ spa_uberblock; int /*<<< orphan*/  spa_config_txg; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  spa_import_type_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DS_FIND_CHILDREN ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SPA_ASYNC_RESILVER ; 
 scalar_t__ SPA_CONFIG_SRC_NONE ; 
 scalar_t__ SPA_LOAD_RECOVER ; 
 scalar_t__ SPA_LOAD_TRYIMPORT ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  VDEV_AUX_UNSUP_FEAT ; 
 int ZFS_IMPORT_CHECKPOINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_destroy_inconsistent ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int FUNC10 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int FUNC22 (TYPE_2__*) ; 
 int FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,char**) ; 
 int FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC36(spa_t *spa, spa_import_type_t type, char **ereport)
{
	int error = 0;
	boolean_t missing_feat_write = B_FALSE;
	boolean_t checkpoint_rewind =
	    (spa->spa_import_flags & ZFS_IMPORT_CHECKPOINT);
	boolean_t update_config_cache = B_FALSE;

	FUNC0(FUNC1(&spa_namespace_lock));
	FUNC0(spa->spa_config_source != SPA_CONFIG_SRC_NONE);

	FUNC25(spa, "LOADING");

	error = FUNC18(spa, type, &update_config_cache);
	if (error != 0)
		return (error);

	/*
	 * If we are rewinding to the checkpoint then we need to repeat
	 * everything we've done so far in this function but this time
	 * selecting the checkpointed uberblock and using that to open
	 * the MOS.
	 */
	if (checkpoint_rewind) {
		/*
		 * If we are rewinding to the checkpoint update config cache
		 * anyway.
		 */
		update_config_cache = B_TRUE;

		/*
		 * Extract the checkpointed uberblock from the current MOS
		 * and use this as the pool's uberblock from now on. If the
		 * pool is imported as writeable we also write the checkpoint
		 * uberblock to the labels, making the rewind permanent.
		 */
		error = FUNC12(spa);
		if (error != 0)
			return (error);

		/*
		 * Redo the loading process process again with the
		 * checkpointed uberblock.
		 */
		FUNC21(spa);
		FUNC25(spa, "LOADING checkpointed uberblock");
		error = FUNC18(spa, type, NULL);
		if (error != 0)
			return (error);
	}

	/*
	 * Retrieve the checkpoint txg if the pool has a checkpoint.
	 */
	error = FUNC22(spa);
	if (error != 0)
		return (error);

	/*
	 * Retrieve the mapping of indirect vdevs. Those vdevs were removed
	 * from the pool and their contents were re-mapped to other vdevs. Note
	 * that everything that we read before this step must have been
	 * rewritten on concrete vdevs after the last device removal was
	 * initiated. Otherwise we could be reading from indirect vdevs before
	 * we have loaded their mappings.
	 */
	error = FUNC20(spa);
	if (error != 0)
		return (error);

	/*
	 * Retrieve the full list of active features from the MOS and check if
	 * they are all supported.
	 */
	error = FUNC10(spa, &missing_feat_write);
	if (error != 0)
		return (error);

	/*
	 * Load several special directories from the MOS needed by the dsl_pool
	 * layer.
	 */
	error = FUNC16(spa);
	if (error != 0)
		return (error);

	/*
	 * Retrieve pool properties from the MOS.
	 */
	error = FUNC14(spa);
	if (error != 0)
		return (error);

	/*
	 * Retrieve the list of auxiliary devices - cache devices and spares -
	 * and open them.
	 */
	error = FUNC19(spa, type);
	if (error != 0)
		return (error);

	/*
	 * Load the metadata for all vdevs. Also check if unopenable devices
	 * should be autoreplaced.
	 */
	error = FUNC17(spa);
	if (error != 0)
		return (error);

	error = FUNC15(spa);
	if (error != 0)
		return (error);

	/*
	 * Verify the logs now to make sure we don't have any unexpected errors
	 * when we claim log blocks later.
	 */
	error = FUNC23(spa, type, ereport);
	if (error != 0)
		return (error);

	if (missing_feat_write) {
		FUNC0(spa->spa_load_state == SPA_LOAD_TRYIMPORT);

		/*
		 * At this point, we know that we can open the pool in
		 * read-only mode but not read-write mode. We now have enough
		 * information and can return to userland.
		 */
		return (FUNC30(spa->spa_root_vdev, VDEV_AUX_UNSUP_FEAT,
		    ENOTSUP));
	}

	/*
	 * Traverse the last txgs to make sure the pool was left off in a safe
	 * state. When performing an extreme rewind, we verify the whole pool,
	 * which can take a very long time.
	 */
	error = FUNC24(spa);
	if (error != 0)
		return (error);

	/*
	 * Calculate the deflated space for the pool. This must be done before
	 * we write anything to the pool because we'd need to update the space
	 * accounting using the deflated sizes.
	 */
	FUNC29(spa);

	/*
	 * We have now retrieved all the information we needed to open the
	 * pool. If we are importing the pool in read-write mode, a few
	 * additional steps must be performed to finish the import.
	 */
	if (FUNC31(spa) && (spa->spa_load_state == SPA_LOAD_RECOVER ||
	    spa->spa_load_max_txg == UINT64_MAX)) {
		uint64_t config_cache_txg = spa->spa_config_txg;

		FUNC0(spa->spa_load_state != SPA_LOAD_TRYIMPORT);

		/*
		 * In case of a checkpoint rewind, log the original txg
		 * of the checkpointed uberblock.
		 */
		if (checkpoint_rewind) {
			FUNC8(spa, "checkpoint rewind",
			    NULL, "rewound state to txg=%llu",
			    (u_longlong_t)spa->spa_uberblock.ub_checkpoint_txg);
		}

		/*
		 * Traverse the ZIL and claim all blocks.
		 */
		FUNC13(spa);

		/*
		 * Kick-off the syncing thread.
		 */
		spa->spa_sync_on = B_TRUE;
		FUNC32(spa->spa_dsl_pool);

		/*
		 * Wait for all claims to sync.  We sync up to the highest
		 * claimed log block birth time so that claimed log blocks
		 * don't appear to be from the future.  spa_claim_max_txg
		 * will have been set for us by ZIL traversal operations
		 * performed above.
		 */
		FUNC33(spa->spa_dsl_pool, spa->spa_claim_max_txg);

		/*
		 * Check if we need to request an update of the config. On the
		 * next sync, we would update the config stored in vdev labels
		 * and the cachefile (by default /etc/zfs/zpool.cache).
		 */
		FUNC11(spa, config_cache_txg,
		    update_config_cache);

		/*
		 * Check all DTLs to see if anything needs resilvering.
		 */
		if (!FUNC4(spa->spa_dsl_pool) &&
		    FUNC35(spa->spa_root_vdev, NULL, NULL))
			FUNC5(spa, SPA_ASYNC_RESILVER);

		/*
		 * Log the fact that we booted up (so that we can detect if
		 * we rebooted in the middle of an operation).
		 */
		FUNC9(spa, "open");

		FUNC27(spa);
		FUNC28(spa);

		/*
		 * Delete any inconsistent datasets.
		 *
		 * Note:
		 * Since we may be issuing deletes for clones here,
		 * we make sure to do so after we've spawned all the
		 * auxiliary threads above (from which the livelist
		 * deletion zthr is part of).
		 */
		(void) FUNC2(FUNC26(spa),
		    dsl_destroy_inconsistent, NULL, DS_FIND_CHILDREN);

		/*
		 * Clean up any stale temporary dataset userrefs.
		 */
		FUNC3(spa->spa_dsl_pool);

		FUNC6(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC34(spa->spa_root_vdev);
		FUNC7(spa, SCL_CONFIG, FTAG);
	}

	FUNC25(spa, "LOADED");

	return (0);
}