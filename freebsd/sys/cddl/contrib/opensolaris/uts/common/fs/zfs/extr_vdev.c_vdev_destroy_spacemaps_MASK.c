#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int vdev_asize; int vdev_ms_shift; int /*<<< orphan*/  vdev_ms_array; TYPE_1__* vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/ * spa_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int*,int /*<<< orphan*/ ) ; 
 int* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void
FUNC6(vdev_t *vd, dmu_tx_t *tx)
{
	if (vd->vdev_ms_array == 0)
		return;

	objset_t *mos = vd->vdev_spa->spa_meta_objset;
	uint64_t array_count = vd->vdev_asize >> vd->vdev_ms_shift;
	size_t array_bytes = array_count * sizeof (uint64_t);
	uint64_t *smobj_array = FUNC3(array_bytes, KM_SLEEP);
	FUNC0(FUNC2(mos, vd->vdev_ms_array, 0,
	    array_bytes, smobj_array, 0));

	for (uint64_t i = 0; i < array_count; i++) {
		uint64_t smobj = smobj_array[i];
		if (smobj == 0)
			continue;

		FUNC5(mos, smobj, tx);
	}

	FUNC4(smobj_array, array_bytes);
	FUNC0(FUNC1(mos, vd->vdev_ms_array, tx));
	vd->vdev_ms_array = 0;
}