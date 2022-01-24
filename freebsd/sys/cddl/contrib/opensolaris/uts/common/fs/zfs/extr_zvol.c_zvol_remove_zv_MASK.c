#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int zv_minor; scalar_t__ zv_total_opens; scalar_t__ zv_volmode; int /*<<< orphan*/  zv_rangelock; int /*<<< orphan*/ * zv_dev; int /*<<< orphan*/  zv_name; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  int /*<<< orphan*/  nmbuf ;
typedef  int minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_VOLMODE_DEV ; 
 scalar_t__ ZFS_VOLMODE_GEOM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  zfs_dip ; 
 int /*<<< orphan*/  zfsdev_state ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int /*<<< orphan*/  zv_links ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  zvol_minors ; 

__attribute__((used)) static int
FUNC14(zvol_state_t *zv)
{
#ifdef illumos
	char nmbuf[20];
	minor_t minor = zv->zv_minor;
#endif

	FUNC0(FUNC2(&zfsdev_state_lock));
	if (zv->zv_total_opens != 0)
		return (FUNC3(EBUSY));

#ifdef illumos
	(void) snprintf(nmbuf, sizeof (nmbuf), "%u,raw", minor);
	ddi_remove_minor_node(zfs_dip, nmbuf);

	(void) snprintf(nmbuf, sizeof (nmbuf), "%u", minor);
	ddi_remove_minor_node(zfs_dip, nmbuf);
#else
	FUNC4(1, "ZVOL %s destroyed.", zv->zv_name);

	FUNC1(zv, zv_links);
	if (zv->zv_volmode == ZFS_VOLMODE_GEOM) {
		FUNC8();
		FUNC13(zv);
		FUNC9();
	} else if (zv->zv_volmode == ZFS_VOLMODE_DEV) {
		if (zv->zv_dev != NULL)
			FUNC7(zv->zv_dev);
	}
#endif

	FUNC11(&zv->zv_rangelock);

	FUNC10(zv, sizeof (zvol_state_t));
#ifdef illumos
	ddi_soft_state_free(zfsdev_state, minor);
#endif
	zvol_minors--;
	return (0);
}