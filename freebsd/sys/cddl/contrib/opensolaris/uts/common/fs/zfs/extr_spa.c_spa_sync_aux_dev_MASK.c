#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_8__ {scalar_t__ sav_object; int sav_count; scalar_t__ sav_sync; int /*<<< orphan*/ * sav_vdevs; } ;
typedef  TYPE_2__ spa_aux_vdev_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  DMU_OT_PACKED_NVLIST ; 
 int /*<<< orphan*/  DMU_OT_PACKED_NVLIST_SIZE ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  VDEV_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(spa_t *spa, spa_aux_vdev_t *sav, dmu_tx_t *tx,
    const char *config, const char *entry)
{
	nvlist_t *nvroot;
	nvlist_t **list;
	int i;

	if (!sav->sav_sync)
		return;

	/*
	 * Update the MOS nvlist describing the list of available devices.
	 * spa_validate_aux() will have already made sure this nvlist is
	 * valid and the vdevs are labeled appropriately.
	 */
	if (sav->sav_object == 0) {
		sav->sav_object = FUNC1(spa->spa_meta_objset,
		    DMU_OT_PACKED_NVLIST, 1 << 14, DMU_OT_PACKED_NVLIST_SIZE,
		    sizeof (uint64_t), tx);
		FUNC0(FUNC9(spa->spa_meta_objset,
		    DMU_POOL_DIRECTORY_OBJECT, entry, sizeof (uint64_t), 1,
		    &sav->sav_object, tx) == 0);
	}

	FUNC0(FUNC5(&nvroot, NV_UNIQUE_NAME, KM_SLEEP) == 0);
	if (sav->sav_count == 0) {
		FUNC0(FUNC4(nvroot, config, NULL, 0) == 0);
	} else {
		list = FUNC2(sav->sav_count * sizeof (void *), KM_SLEEP);
		for (i = 0; i < sav->sav_count; i++)
			list[i] = FUNC8(spa, sav->sav_vdevs[i],
			    B_FALSE, VDEV_CONFIG_L2CACHE);
		FUNC0(FUNC4(nvroot, config, list,
		    sav->sav_count) == 0);
		for (i = 0; i < sav->sav_count; i++)
			FUNC6(list[i]);
		FUNC3(list, sav->sav_count * sizeof (void *));
	}

	FUNC7(spa, sav->sav_object, nvroot, tx);
	FUNC6(nvroot);

	sav->sav_sync = B_FALSE;
}