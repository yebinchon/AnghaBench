#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ vdev_guid; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_stat_t ;
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ sav_count; TYPE_2__** sav_vdevs; int /*<<< orphan*/ * sav_config; } ;
struct TYPE_9__ {TYPE_1__ spa_l2cache; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(spa_t *spa, nvlist_t *config)
{
	nvlist_t **l2cache;
	uint_t i, j, nl2cache;
	nvlist_t *nvroot;
	uint64_t guid;
	vdev_t *vd;
	vdev_stat_t *vs;
	uint_t vsc;

	FUNC0(FUNC7(spa, SCL_CONFIG, RW_READER));

	if (spa->spa_l2cache.sav_count == 0)
		return;

	FUNC1(FUNC3(config,
	    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
	FUNC1(FUNC4(spa->spa_l2cache.sav_config,
	    ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0);
	if (nl2cache != 0) {
		FUNC1(FUNC2(nvroot,
		    ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache) == 0);
		FUNC1(FUNC4(nvroot,
		    ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0);

		/*
		 * Update level 2 cache device stats.
		 */

		for (i = 0; i < nl2cache; i++) {
			FUNC1(FUNC5(l2cache[i],
			    ZPOOL_CONFIG_GUID, &guid) == 0);

			vd = NULL;
			for (j = 0; j < spa->spa_l2cache.sav_count; j++) {
				if (guid ==
				    spa->spa_l2cache.sav_vdevs[j]->vdev_guid) {
					vd = spa->spa_l2cache.sav_vdevs[j];
					break;
				}
			}
			FUNC0(vd != NULL);

			FUNC1(FUNC6(l2cache[i],
			    ZPOOL_CONFIG_VDEV_STATS, (uint64_t **)&vs, &vsc)
			    == 0);
			FUNC8(vd, vs);
		}
	}
}