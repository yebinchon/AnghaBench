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
struct TYPE_3__ {scalar_t__ vdev_top_zap; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int /*<<< orphan*/  VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int*) ; 

int
FUNC5(vdev_t *vd)
{
	FUNC1(FUNC2(vd->vdev_spa, SCL_ALL, RW_WRITER));
	if (vd->vdev_top_zap == 0) {
		return (0);
	}

	uint64_t sm_obj = 0;
	int err = FUNC4(FUNC3(vd->vdev_spa), vd->vdev_top_zap,
	    VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, sizeof (uint64_t), 1, &sm_obj);

	FUNC0(err == 0 || err == ENOENT);

	return (sm_obj);
}