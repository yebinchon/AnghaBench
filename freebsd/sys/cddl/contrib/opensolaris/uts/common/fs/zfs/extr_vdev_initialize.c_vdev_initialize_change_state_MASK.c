#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int vdev_initialize_state; int /*<<< orphan*/  vdev_path; int /*<<< orphan*/  vdev_initialize_action_time; int /*<<< orphan*/  vdev_guid; int /*<<< orphan*/ * vdev_spa; int /*<<< orphan*/  vdev_initialize_lock; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int vdev_initializing_state_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {int /*<<< orphan*/  dp_mos_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
#define  VDEV_INITIALIZE_ACTIVE 131 
#define  VDEV_INITIALIZE_CANCELED 130 
#define  VDEV_INITIALIZE_COMPLETE 129 
#define  VDEV_INITIALIZE_SUSPENDED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long long) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_initialize_zap_update_sync ; 

__attribute__((used)) static void
FUNC12(vdev_t *vd, vdev_initializing_state_t new_state)
{
	FUNC0(FUNC1(&vd->vdev_initialize_lock));
	spa_t *spa = vd->vdev_spa;

	if (new_state == vd->vdev_initialize_state)
		return;

	/*
	 * Copy the vd's guid, this will be freed by the sync task.
	 */
	uint64_t *guid = FUNC8(sizeof (uint64_t), KM_SLEEP);
	*guid = vd->vdev_guid;

	/*
	 * If we're suspending, then preserving the original start time.
	 */
	if (vd->vdev_initialize_state != VDEV_INITIALIZE_SUSPENDED) {
		vd->vdev_initialize_action_time = FUNC7();
	}
	vd->vdev_initialize_state = new_state;

	dmu_tx_t *tx = FUNC5(FUNC10(spa)->dp_mos_dir);
	FUNC2(FUNC3(tx, TXG_WAIT));
	FUNC6(FUNC10(spa), vdev_initialize_zap_update_sync,
	    guid, 2, ZFS_SPACE_CHECK_RESERVED, tx);

	switch (new_state) {
	case VDEV_INITIALIZE_ACTIVE:
		FUNC11(spa, "initialize", tx,
		    "vdev=%s activated", vd->vdev_path);
		break;
	case VDEV_INITIALIZE_SUSPENDED:
		FUNC11(spa, "initialize", tx,
		    "vdev=%s suspended", vd->vdev_path);
		break;
	case VDEV_INITIALIZE_CANCELED:
		FUNC11(spa, "initialize", tx,
		    "vdev=%s canceled", vd->vdev_path);
		break;
	case VDEV_INITIALIZE_COMPLETE:
		FUNC11(spa, "initialize", tx,
		    "vdev=%s complete", vd->vdev_path);
		break;
	default:
		FUNC9("invalid state %llu", (unsigned long long)new_state);
	}

	FUNC4(tx);
}