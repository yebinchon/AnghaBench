#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * vdev_devid_vp; TYPE_3__* vdev_spa; int /*<<< orphan*/ * vdev_name_vp; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_dsl_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(vdev_t *vd)
{
	FUNC0(FUNC3(vd->vdev_spa, SCL_STATE, RW_WRITER));

	if (vd->vdev_name_vp) {
		FUNC1(vd->vdev_name_vp,
		    FUNC2(vd->vdev_spa->spa_dsl_pool));
		vd->vdev_name_vp = NULL;
	}
	if (vd->vdev_devid_vp) {
		FUNC1(vd->vdev_devid_vp,
		    FUNC2(vd->vdev_spa->spa_dsl_pool));
		vd->vdev_devid_vp = NULL;
	}
}