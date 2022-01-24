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
struct TYPE_10__ {scalar_t__ vs_aux; } ;
struct TYPE_11__ {TYPE_1__ vdev_stat; void* vdev_offline; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ VDEV_AUX_SPLIT_POOL ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPLIT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPLIT_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int) ; 
 TYPE_2__** FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,int*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(spa_t *spa, nvlist_t *config)
{
	uint_t extracted;
	uint64_t *glist;
	uint_t i, gcount;
	nvlist_t *nvl;
	vdev_t **vd;
	boolean_t attempt_reopen;

	if (FUNC2(config, ZPOOL_CONFIG_SPLIT, &nvl) != 0)
		return;

	/* check that the config is complete */
	if (FUNC3(nvl, ZPOOL_CONFIG_SPLIT_LIST,
	    &glist, &gcount) != 0)
		return;

	vd = FUNC1(gcount * sizeof (vdev_t *), KM_SLEEP);

	/* attempt to online all the vdevs & validate */
	attempt_reopen = B_TRUE;
	for (i = 0; i < gcount; i++) {
		if (glist[i] == 0)	/* vdev is hole */
			continue;

		vd[i] = FUNC4(spa, glist[i], B_FALSE);
		if (vd[i] == NULL) {
			/*
			 * Don't bother attempting to reopen the disks;
			 * just do the split.
			 */
			attempt_reopen = B_FALSE;
		} else {
			/* attempt to re-online it */
			vd[i]->vdev_offline = B_FALSE;
		}
	}

	if (attempt_reopen) {
		FUNC5(spa->spa_root_vdev);

		/* check each device to see what state it's in */
		for (extracted = 0, i = 0; i < gcount; i++) {
			if (vd[i] != NULL &&
			    vd[i]->vdev_stat.vs_aux != VDEV_AUX_SPLIT_POOL)
				break;
			++extracted;
		}
	}

	/*
	 * If every disk has been moved to the new pool, or if we never
	 * even attempted to look at them, then we split them off for
	 * good.
	 */
	if (!attempt_reopen || gcount == extracted) {
		for (i = 0; i < gcount; i++)
			if (vd[i] != NULL)
				FUNC6(vd[i]);
		FUNC5(spa->spa_root_vdev);
	}

	FUNC0(vd, gcount * sizeof (vdev_t *));
}