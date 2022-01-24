#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ vdev_initialize_state; int /*<<< orphan*/  vdev_initialize_lock; TYPE_2__* vdev_top; int /*<<< orphan*/ * vdev_initialize_thread; TYPE_1__* vdev_ops; scalar_t__ vdev_detached; } ;
typedef  TYPE_3__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_17__ {int /*<<< orphan*/  spa_dsl_pool; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_15__ {scalar_t__ vdev_removing; } ;
struct TYPE_14__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
#define  POOL_INITIALIZE_CANCEL 130 
#define  POOL_INITIALIZE_DO 129 
#define  POOL_INITIALIZE_SUSPEND 128 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VDEV_INITIALIZE_ACTIVE ; 
 scalar_t__ VDEV_INITIALIZE_CANCELED ; 
 scalar_t__ VDEV_INITIALIZE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

int
FUNC12(spa_t *spa, uint64_t guid, uint64_t cmd_type)
{
	/*
	 * We hold the namespace lock through the whole function
	 * to prevent any changes to the pool while we're starting or
	 * stopping initialization. The config and state locks are held so that
	 * we can properly assess the vdev state before we commit to
	 * the initializing operation.
	 */
	FUNC1(&spa_namespace_lock);
	FUNC4(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);

	/* Look up vdev and ensure it's a leaf. */
	vdev_t *vd = FUNC6(spa, guid, B_FALSE);
	if (vd == NULL || vd->vdev_detached) {
		FUNC5(spa, SCL_CONFIG | SCL_STATE, FTAG);
		FUNC2(&spa_namespace_lock);
		return (FUNC0(ENODEV));
	} else if (!vd->vdev_ops->vdev_op_leaf || !FUNC10(vd)) {
		FUNC5(spa, SCL_CONFIG | SCL_STATE, FTAG);
		FUNC2(&spa_namespace_lock);
		return (FUNC0(EINVAL));
	} else if (!FUNC11(vd)) {
		FUNC5(spa, SCL_CONFIG | SCL_STATE, FTAG);
		FUNC2(&spa_namespace_lock);
		return (FUNC0(EROFS));
	}
	FUNC1(&vd->vdev_initialize_lock);
	FUNC5(spa, SCL_CONFIG | SCL_STATE, FTAG);

	/*
	 * When we activate an initialize action we check to see
	 * if the vdev_initialize_thread is NULL. We do this instead
	 * of using the vdev_initialize_state since there might be
	 * a previous initialization process which has completed but
	 * the thread is not exited.
	 */
	if (cmd_type == POOL_INITIALIZE_DO &&
	    (vd->vdev_initialize_thread != NULL ||
	    vd->vdev_top->vdev_removing)) {
		FUNC2(&vd->vdev_initialize_lock);
		FUNC2(&spa_namespace_lock);
		return (FUNC0(EBUSY));
	} else if (cmd_type == POOL_INITIALIZE_CANCEL &&
	    (vd->vdev_initialize_state != VDEV_INITIALIZE_ACTIVE &&
	    vd->vdev_initialize_state != VDEV_INITIALIZE_SUSPENDED)) {
		FUNC2(&vd->vdev_initialize_lock);
		FUNC2(&spa_namespace_lock);
		return (FUNC0(ESRCH));
	} else if (cmd_type == POOL_INITIALIZE_SUSPEND &&
	    vd->vdev_initialize_state != VDEV_INITIALIZE_ACTIVE) {
		FUNC2(&vd->vdev_initialize_lock);
		FUNC2(&spa_namespace_lock);
		return (FUNC0(ESRCH));
	}

	switch (cmd_type) {
	case POOL_INITIALIZE_DO:
		FUNC8(vd);
		break;
	case POOL_INITIALIZE_CANCEL:
		FUNC9(vd, VDEV_INITIALIZE_CANCELED);
		break;
	case POOL_INITIALIZE_SUSPEND:
		FUNC9(vd, VDEV_INITIALIZE_SUSPENDED);
		break;
	default:
		FUNC3("invalid cmd_type %llu", (unsigned long long)cmd_type);
	}
	FUNC2(&vd->vdev_initialize_lock);

	/* Sync out the initializing state */
	FUNC7(spa->spa_dsl_pool, 0);
	FUNC2(&spa_namespace_lock);

	return (0);
}