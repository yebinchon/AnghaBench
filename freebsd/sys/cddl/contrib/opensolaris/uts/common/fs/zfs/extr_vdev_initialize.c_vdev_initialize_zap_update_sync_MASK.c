#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t* vdev_initialize_offset; scalar_t__ vdev_leaf_zap; size_t vdev_initialize_last_offset; scalar_t__ vdev_initialize_action_time; size_t vdev_initialize_state; TYPE_3__* vdev_spa; TYPE_2__* vdev_top; } ;
typedef  TYPE_4__ vdev_t ;
typedef  int /*<<< orphan*/  val ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  last_offset ;
typedef  int /*<<< orphan*/  initialize_state ;
struct TYPE_15__ {TYPE_1__* tx_pool; } ;
typedef  TYPE_5__ dmu_tx_t ;
struct TYPE_13__ {int /*<<< orphan*/ * spa_meta_objset; } ;
struct TYPE_12__ {scalar_t__ vdev_removing; } ;
struct TYPE_11__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME ; 
 int /*<<< orphan*/  VDEV_LEAF_ZAP_INITIALIZE_LAST_OFFSET ; 
 int /*<<< orphan*/  VDEV_LEAF_ZAP_INITIALIZE_STATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int,size_t*,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC7(void *arg, dmu_tx_t *tx)
{
	/*
	 * We pass in the guid instead of the vdev_t since the vdev may
	 * have been freed prior to the sync task being processed. This
	 * happens when a vdev is detached as we call spa_config_vdev_exit(),
	 * stop the intializing thread, schedule the sync task, and free
	 * the vdev. Later when the scheduled sync task is invoked, it would
	 * find that the vdev has been freed.
	 */
	uint64_t guid = *(uint64_t *)arg;
	uint64_t txg = FUNC2(tx);
	FUNC3(arg, sizeof (uint64_t));

	vdev_t *vd = FUNC4(tx->tx_pool->dp_spa, guid, B_FALSE);
	if (vd == NULL || vd->vdev_top->vdev_removing || !FUNC5(vd))
		return;

	uint64_t last_offset = vd->vdev_initialize_offset[txg & TXG_MASK];
	vd->vdev_initialize_offset[txg & TXG_MASK] = 0;

	FUNC0(vd->vdev_leaf_zap != 0);

	objset_t *mos = vd->vdev_spa->spa_meta_objset;

	if (last_offset > 0) {
		vd->vdev_initialize_last_offset = last_offset;
		FUNC1(FUNC6(mos, vd->vdev_leaf_zap,
		    VDEV_LEAF_ZAP_INITIALIZE_LAST_OFFSET,
		    sizeof (last_offset), 1, &last_offset, tx));
	}
	if (vd->vdev_initialize_action_time > 0) {
		uint64_t val = (uint64_t)vd->vdev_initialize_action_time;
		FUNC1(FUNC6(mos, vd->vdev_leaf_zap,
		    VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME, sizeof (val),
		    1, &val, tx));
	}

	uint64_t initialize_state = vd->vdev_initialize_state;
	FUNC1(FUNC6(mos, vd->vdev_leaf_zap,
	    VDEV_LEAF_ZAP_INITIALIZE_STATE, sizeof (initialize_state), 1,
	    &initialize_state, tx));
}