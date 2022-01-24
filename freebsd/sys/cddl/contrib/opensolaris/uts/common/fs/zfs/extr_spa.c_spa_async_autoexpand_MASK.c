#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vdev_children; char* vdev_physpath; TYPE_1__* vdev_ops; struct TYPE_7__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  sysevent_id_t ;
struct TYPE_8__ {int /*<<< orphan*/  spa_autoexpand; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDI_SLEEP ; 
 int /*<<< orphan*/  DEV_PHYS_PATH ; 
 int /*<<< orphan*/  EC_DEV_STATUS ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_AUTOEXPAND ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  SUNW_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  zfs_dip ; 

__attribute__((used)) static void
FUNC8(spa_t *spa, vdev_t *vd)
{
	sysevent_id_t eid;
	nvlist_t *attr;
	char *physpath;

	if (!spa->spa_autoexpand)
		return;

	for (int c = 0; c < vd->vdev_children; c++) {
		vdev_t *cvd = vd->vdev_child[c];
		FUNC8(spa, cvd);
	}

	if (!vd->vdev_ops->vdev_op_leaf || vd->vdev_physpath == NULL)
		return;

	physpath = FUNC3(MAXPATHLEN, KM_SLEEP);
	(void) FUNC7(physpath, MAXPATHLEN, "/devices%s", vd->vdev_physpath);

	FUNC0(FUNC5(&attr, NV_UNIQUE_NAME, KM_SLEEP) == 0);
	FUNC0(FUNC4(attr, DEV_PHYS_PATH, physpath) == 0);

	(void) FUNC1(zfs_dip, SUNW_VENDOR, EC_DEV_STATUS,
	    ESC_ZFS_VDEV_AUTOEXPAND, attr, &eid, DDI_SLEEP);

	FUNC6(attr);
	FUNC2(physpath, MAXPATHLEN);
}