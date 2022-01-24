#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int sav_count; int /*<<< orphan*/ * sav_config; TYPE_4__** sav_vdevs; } ;
struct TYPE_20__ {int sav_count; int /*<<< orphan*/ * sav_config; TYPE_4__** sav_vdevs; } ;
struct TYPE_22__ {int /*<<< orphan*/ * spa_comment; void* spa_indirect_vdevs_loaded; scalar_t__ spa_async_suspended; TYPE_2__ spa_l2cache; TYPE_1__ spa_spares; int /*<<< orphan*/ * spa_meta_objset; int /*<<< orphan*/ * spa_dsl_pool; TYPE_4__* spa_root_vdev; int /*<<< orphan*/  spa_deferred_bpobj; int /*<<< orphan*/ * spa_checkpoint_discard_zthr; int /*<<< orphan*/ * spa_condense_zthr; int /*<<< orphan*/ * spa_vdev_removal; TYPE_4__** spa_async_zio_root; void* spa_sync_on; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_23__ {int vdev_children; int /*<<< orphan*/ * vdev_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,int) ; 
 int max_ncpus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC23(spa_t *spa)
{
	int i;

	FUNC0(FUNC1(&spa_namespace_lock));

	FUNC12(spa, "UNLOADING");

	/*
	 * Stop TRIM thread.
	 */
	FUNC15(spa);

	/*
	 * Stop async tasks.
	 */
	FUNC7(spa);

	if (spa->spa_root_vdev) {
		FUNC19(spa->spa_root_vdev,
		    VDEV_INITIALIZE_ACTIVE);
	}

	/*
	 * Stop syncing.
	 */
	if (spa->spa_sync_on) {
		FUNC16(spa->spa_dsl_pool);
		spa->spa_sync_on = B_FALSE;
	}

	/*
	 * Even though vdev_free() also calls vdev_metaslab_fini, we need
	 * to call it earlier, before we wait for async i/o to complete.
	 * This ensures that there is no async metaslab prefetching, by
	 * calling taskq_wait(mg_taskq).
	 */
	if (spa->spa_root_vdev != NULL) {
		FUNC9(spa, SCL_ALL, spa, RW_WRITER);
		for (int c = 0; c < spa->spa_root_vdev->vdev_children; c++)
			FUNC20(spa->spa_root_vdev->vdev_child[c]);
		FUNC10(spa, SCL_ALL, spa);
	}

	/*
	 * Wait for any outstanding async I/O to complete.
	 */
	if (spa->spa_async_zio_root != NULL) {
		for (int i = 0; i < max_ncpus; i++)
			(void) FUNC21(spa->spa_async_zio_root[i]);
		FUNC5(spa->spa_async_zio_root, max_ncpus * sizeof (void *));
		spa->spa_async_zio_root = NULL;
	}

	if (spa->spa_vdev_removal != NULL) {
		FUNC14(spa->spa_vdev_removal);
		spa->spa_vdev_removal = NULL;
	}

	if (spa->spa_condense_zthr != NULL) {
		FUNC22(spa->spa_condense_zthr);
		spa->spa_condense_zthr = NULL;
	}

	if (spa->spa_checkpoint_discard_zthr != NULL) {
		FUNC22(spa->spa_checkpoint_discard_zthr);
		spa->spa_checkpoint_discard_zthr = NULL;
	}

	FUNC8(spa);

	FUNC2(&spa->spa_deferred_bpobj);

	FUNC9(spa, SCL_ALL, spa, RW_WRITER);

	/*
	 * Close all vdevs.
	 */
	if (spa->spa_root_vdev)
		FUNC18(spa->spa_root_vdev);
	FUNC0(spa->spa_root_vdev == NULL);

	/*
	 * Close the dsl pool.
	 */
	if (spa->spa_dsl_pool) {
		FUNC4(spa->spa_dsl_pool);
		spa->spa_dsl_pool = NULL;
		spa->spa_meta_objset = NULL;
	}

	FUNC3(spa);

	/*
	 * Drop and purge level 2 cache
	 */
	FUNC11(spa);

	for (i = 0; i < spa->spa_spares.sav_count; i++)
		FUNC18(spa->spa_spares.sav_vdevs[i]);
	if (spa->spa_spares.sav_vdevs) {
		FUNC5(spa->spa_spares.sav_vdevs,
		    spa->spa_spares.sav_count * sizeof (void *));
		spa->spa_spares.sav_vdevs = NULL;
	}
	if (spa->spa_spares.sav_config) {
		FUNC6(spa->spa_spares.sav_config);
		spa->spa_spares.sav_config = NULL;
	}
	spa->spa_spares.sav_count = 0;

	for (i = 0; i < spa->spa_l2cache.sav_count; i++) {
		FUNC17(spa->spa_l2cache.sav_vdevs[i]);
		FUNC18(spa->spa_l2cache.sav_vdevs[i]);
	}
	if (spa->spa_l2cache.sav_vdevs) {
		FUNC5(spa->spa_l2cache.sav_vdevs,
		    spa->spa_l2cache.sav_count * sizeof (void *));
		spa->spa_l2cache.sav_vdevs = NULL;
	}
	if (spa->spa_l2cache.sav_config) {
		FUNC6(spa->spa_l2cache.sav_config);
		spa->spa_l2cache.sav_config = NULL;
	}
	spa->spa_l2cache.sav_count = 0;

	spa->spa_async_suspended = 0;

	spa->spa_indirect_vdevs_loaded = B_FALSE;

	if (spa->spa_comment != NULL) {
		FUNC13(spa->spa_comment);
		spa->spa_comment = NULL;
	}

	FUNC10(spa, SCL_ALL, spa);
}