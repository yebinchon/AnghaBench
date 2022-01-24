#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* zc_obj; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  vdev_state_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* VDEV_AUX_ERR_EXCEEDED ; 
 void* VDEV_AUX_EXTERNAL ; 
#define  VDEV_STATE_DEGRADED 131 
#define  VDEV_STATE_FAULTED 130 
#define  VDEV_STATE_OFFLINE 129 
#define  VDEV_STATE_ONLINE 128 
 int /*<<< orphan*/  VDEV_STATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(zfs_cmd_t *zc)
{
	spa_t *spa;
	int error;
	vdev_state_t newstate = VDEV_STATE_UNKNOWN;

	if ((error = FUNC2(zc->zc_name, &spa, FTAG)) != 0)
		return (error);
	switch (zc->zc_cookie) {
	case VDEV_STATE_ONLINE:
		error = FUNC6(spa, zc->zc_guid, zc->zc_obj, &newstate);
		break;

	case VDEV_STATE_OFFLINE:
		error = FUNC5(spa, zc->zc_guid, zc->zc_obj);
		break;

	case VDEV_STATE_FAULTED:
		if (zc->zc_obj != VDEV_AUX_ERR_EXCEEDED &&
		    zc->zc_obj != VDEV_AUX_EXTERNAL)
			zc->zc_obj = VDEV_AUX_ERR_EXCEEDED;

		error = FUNC4(spa, zc->zc_guid, zc->zc_obj);
		break;

	case VDEV_STATE_DEGRADED:
		if (zc->zc_obj != VDEV_AUX_ERR_EXCEEDED &&
		    zc->zc_obj != VDEV_AUX_EXTERNAL)
			zc->zc_obj = VDEV_AUX_ERR_EXCEEDED;

		error = FUNC3(spa, zc->zc_guid, zc->zc_obj);
		break;

	default:
		error = FUNC0(EINVAL);
	}
	zc->zc_cookie = newstate;
	FUNC1(spa, FTAG);
	return (error);
}