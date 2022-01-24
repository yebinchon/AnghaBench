#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ vdev_ms_count; scalar_t__ vdev_asize; scalar_t__ vdev_ms_shift; int /*<<< orphan*/  vdev_mg; int /*<<< orphan*/  vdev_removing; int /*<<< orphan*/ ** vdev_ms; int /*<<< orphan*/  vdev_ms_array; int /*<<< orphan*/  vdev_ishole; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/ ** FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int) ; 

int
FUNC11(vdev_t *vd, uint64_t txg)
{
	spa_t *spa = vd->vdev_spa;
	objset_t *mos = spa->spa_meta_objset;
	uint64_t m;
	uint64_t oldc = vd->vdev_ms_count;
	uint64_t newc = vd->vdev_asize >> vd->vdev_ms_shift;
	metaslab_t **mspp;
	int error;

	FUNC0(txg == 0 || FUNC9(spa, SCL_ALLOC, RW_WRITER));

	/*
	 * This vdev is not being allocated from yet or is a hole.
	 */
	if (vd->vdev_ms_shift == 0)
		return (0);

	FUNC0(!vd->vdev_ishole);

	FUNC0(oldc <= newc);

	mspp = FUNC4(newc * sizeof (*mspp), KM_SLEEP);

	if (oldc != 0) {
		FUNC1(vd->vdev_ms, mspp, oldc * sizeof (*mspp));
		FUNC3(vd->vdev_ms, oldc * sizeof (*mspp));
	}

	vd->vdev_ms = mspp;
	vd->vdev_ms_count = newc;
	for (m = oldc; m < newc; m++) {
		uint64_t object = 0;

		/*
		 * vdev_ms_array may be 0 if we are creating the "fake"
		 * metaslabs for an indirect vdev for zdb's leak detection.
		 * See zdb_leak_init().
		 */
		if (txg == 0 && vd->vdev_ms_array != 0) {
			error = FUNC2(mos, vd->vdev_ms_array,
			    m * sizeof (uint64_t), sizeof (uint64_t), &object,
			    DMU_READ_PREFETCH);
			if (error != 0) {
				FUNC10(vd, "unable to read the metaslab "
				    "array [error=%d]", error);
				return (error);
			}
		}

		error = FUNC6(vd->vdev_mg, m, object, txg,
		    &(vd->vdev_ms[m]));
		if (error != 0) {
			FUNC10(vd, "metaslab_init failed [error=%d]",
			    error);
			return (error);
		}
	}

	if (txg == 0)
		FUNC7(spa, SCL_ALLOC, FTAG, RW_WRITER);

	/*
	 * If the vdev is being removed we don't activate
	 * the metaslabs since we want to ensure that no new
	 * allocations are performed on this device.
	 */
	if (oldc == 0 && !vd->vdev_removing)
		FUNC5(vd->vdev_mg);

	if (txg == 0)
		FUNC8(spa, SCL_ALLOC, FTAG);

	return (0);
}