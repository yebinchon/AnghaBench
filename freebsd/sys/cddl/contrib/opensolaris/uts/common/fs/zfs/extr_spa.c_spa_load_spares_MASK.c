#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {TYPE_1__* vdev_aux; struct TYPE_29__* vdev_top; scalar_t__ vdev_isspare; int /*<<< orphan*/  vdev_guid; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint_t ;
struct TYPE_28__ {int sav_count; int /*<<< orphan*/ * sav_config; TYPE_2__** sav_vdevs; } ;
struct TYPE_30__ {TYPE_1__ spa_spares; } ;
typedef  TYPE_3__ spa_t ;
typedef  TYPE_2__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DATA_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 int /*<<< orphan*/  VDEV_ALLOC_SPARE ; 
 int /*<<< orphan*/  VDEV_CONFIG_SPARE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__***,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,TYPE_2__**,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 

void
FUNC21(spa_t *spa)
{
	nvlist_t **spares;
	uint_t nspares;
	int i;
	vdev_t *vd, *tvd;

#ifndef _KERNEL
	/*
	 * zdb opens both the current state of the pool and the
	 * checkpointed state (if present), with a different spa_t.
	 *
	 * As spare vdevs are shared among open pools, we skip loading
	 * them when we load the checkpointed state of the pool.
	 */
	if (!FUNC14(spa))
		return;
#endif

	FUNC0(FUNC8(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	/*
	 * First, close and free any existing spare vdevs.
	 */
	for (i = 0; i < spa->spa_spares.sav_count; i++) {
		vd = spa->spa_spares.sav_vdevs[i];

		/* Undo the call to spa_activate() below */
		if ((tvd = FUNC10(spa, vd->vdev_guid,
		    B_FALSE)) != NULL && tvd->vdev_isspare)
			FUNC13(tvd);
		FUNC15(vd);
		FUNC17(vd);
	}

	if (spa->spa_spares.sav_vdevs)
		FUNC3(spa->spa_spares.sav_vdevs,
		    spa->spa_spares.sav_count * sizeof (void *));

	if (spa->spa_spares.sav_config == NULL)
		nspares = 0;
	else
		FUNC1(FUNC6(spa->spa_spares.sav_config,
		    ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0);

	spa->spa_spares.sav_count = (int)nspares;
	spa->spa_spares.sav_vdevs = NULL;

	if (nspares == 0)
		return;

	/*
	 * Construct the array of vdevs, opening them to get status in the
	 * process.   For each spare, there is potentially two different vdev_t
	 * structures associated with it: one in the list of spares (used only
	 * for basic validation purposes) and one in the active vdev
	 * configuration (if it's spared in).  During this phase we open and
	 * validate each vdev on the spare list.  If the vdev also exists in the
	 * active configuration, then we also mark this vdev as an active spare.
	 */
	spa->spa_spares.sav_vdevs = FUNC2(nspares * sizeof (void *),
	    KM_SLEEP);
	for (i = 0; i < spa->spa_spares.sav_count; i++) {
		FUNC1(FUNC9(spa, &vd, spares[i], NULL, 0,
		    VDEV_ALLOC_SPARE) == 0);
		FUNC0(vd != NULL);

		spa->spa_spares.sav_vdevs[i] = vd;

		if ((tvd = FUNC10(spa, vd->vdev_guid,
		    B_FALSE)) != NULL) {
			if (!tvd->vdev_isspare)
				FUNC12(tvd);

			/*
			 * We only mark the spare active if we were successfully
			 * able to load the vdev.  Otherwise, importing a pool
			 * with a bad active spare would result in strange
			 * behavior, because multiple pool would think the spare
			 * is actively in use.
			 *
			 * There is a vulnerability here to an equally bizarre
			 * circumstance, where a dead active spare is later
			 * brought back to life (onlined or otherwise).  Given
			 * the rarity of this scenario, and the extra complexity
			 * it adds, we ignore the possibility.
			 */
			if (!FUNC18(tvd))
				FUNC11(tvd);
		}

		vd->vdev_top = vd;
		vd->vdev_aux = &spa->spa_spares;

		if (FUNC19(vd) != 0)
			continue;

		if (FUNC20(vd) == 0)
			FUNC12(vd);
	}

	/*
	 * Recompute the stashed list of spares, with status information
	 * this time.
	 */
	FUNC1(FUNC7(spa->spa_spares.sav_config, ZPOOL_CONFIG_SPARES,
	    DATA_TYPE_NVLIST_ARRAY) == 0);

	spares = FUNC2(spa->spa_spares.sav_count * sizeof (void *),
	    KM_SLEEP);
	for (i = 0; i < spa->spa_spares.sav_count; i++)
		spares[i] = FUNC16(spa,
		    spa->spa_spares.sav_vdevs[i], B_TRUE, VDEV_CONFIG_SPARE);
	FUNC1(FUNC4(spa->spa_spares.sav_config,
	    ZPOOL_CONFIG_SPARES, spares, spa->spa_spares.sav_count) == 0);
	for (i = 0; i < spa->spa_spares.sav_count; i++)
		FUNC5(spares[i]);
	FUNC3(spares, spa->spa_spares.sav_count * sizeof (void *));
}