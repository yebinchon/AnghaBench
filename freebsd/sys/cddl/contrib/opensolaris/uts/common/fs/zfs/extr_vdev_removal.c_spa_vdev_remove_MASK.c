#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ vdev_islog; } ;
typedef  TYPE_3__ vdev_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sysevent_t ;
struct TYPE_22__ {void* sav_sync; int /*<<< orphan*/  sav_config; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_21__ {void* sav_sync; int /*<<< orphan*/  sav_config; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_24__ {TYPE_2__ spa_l2cache; TYPE_1__ spa_spares; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_REMOVE_AUX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 int /*<<< orphan*/  VDEV_TYPE_L2CACHE ; 
 int /*<<< orphan*/  VDEV_TYPE_SPARE ; 
 int ZFS_ERR_CHECKPOINT_EXISTS ; 
 int ZFS_ERR_DISCARDING_CHECKPOINT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 TYPE_3__* FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int FUNC17 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_4__*) ; 

int
FUNC22(spa_t *spa, uint64_t guid, boolean_t unspare)
{
	vdev_t *vd;
	nvlist_t **spares, **l2cache, *nv;
	uint64_t txg = 0;
	uint_t nspares, nl2cache;
	int error = 0;
	boolean_t locked = FUNC1(&spa_namespace_lock);
	sysevent_t *ev = NULL;

	FUNC0(FUNC21(spa));

	if (!locked)
		txg = FUNC16(spa);

	FUNC0(FUNC1(&spa_namespace_lock));
	if (FUNC8(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
		error = (FUNC9(spa)) ?
		    ZFS_ERR_CHECKPOINT_EXISTS : ZFS_ERR_DISCARDING_CHECKPOINT;

		if (!locked)
			return (FUNC17(spa, NULL, txg, error));

		return (error);
	}

	vd = FUNC13(spa, guid, B_FALSE);

	if (spa->spa_spares.sav_vdevs != NULL &&
	    FUNC4(spa->spa_spares.sav_config,
	    ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0 &&
	    (nv = FUNC15(spares, nspares, guid)) != NULL) {
		/*
		 * Only remove the hot spare if it's not currently in use
		 * in this pool.
		 */
		if (vd == NULL || unspare) {
			char *nvstr = FUNC3(nv,
			    ZPOOL_CONFIG_PATH);
			FUNC10(spa, "vdev remove", NULL,
			    "%s vdev (%s) %s", FUNC14(spa),
			    VDEV_TYPE_SPARE, nvstr);
			if (vd == NULL)
				vd = FUNC13(spa, guid, B_TRUE);
			ev = FUNC5(spa, vd, NULL,
			    ESC_ZFS_VDEV_REMOVE_AUX);
			FUNC18(spa->spa_spares.sav_config,
			    ZPOOL_CONFIG_SPARES, spares, nspares, nv);
			FUNC12(spa);
			spa->spa_spares.sav_sync = B_TRUE;
		} else {
			error = FUNC2(EBUSY);
		}
	} else if (spa->spa_l2cache.sav_vdevs != NULL &&
	    FUNC4(spa->spa_l2cache.sav_config,
	    ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0 &&
	    (nv = FUNC15(l2cache, nl2cache, guid)) != NULL) {
		char *nvstr = FUNC3(nv, ZPOOL_CONFIG_PATH);
		FUNC10(spa, "vdev remove", NULL,
		    "%s vdev (%s) %s", FUNC14(spa), VDEV_TYPE_L2CACHE, nvstr);
		/*
		 * Cache devices can always be removed.
		 */
		vd = FUNC13(spa, guid, B_TRUE);
		ev = FUNC5(spa, vd, NULL, ESC_ZFS_VDEV_REMOVE_AUX);
		FUNC18(spa->spa_l2cache.sav_config,
		    ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache, nv);
		FUNC11(spa);
		spa->spa_l2cache.sav_sync = B_TRUE;
	} else if (vd != NULL && vd->vdev_islog) {
		FUNC0(!locked);
		error = FUNC19(vd, &txg);
	} else if (vd != NULL) {
		FUNC0(!locked);
		error = FUNC20(vd, &txg);
	} else {
		/*
		 * There is no vdev of any kind with the specified guid.
		 */
		error = FUNC2(ENOENT);
	}

	if (!locked)
		error = FUNC17(spa, NULL, txg, error);

	if (ev != NULL) {
		if (error != 0) {
			FUNC6(ev);
		} else {
			FUNC7(ev);
		}
	}

	return (error);
}