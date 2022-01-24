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
struct TYPE_3__ {char* vdev_path; unsigned long long vdev_wholedisk; int /*<<< orphan*/  vdev_devid_vp; int /*<<< orphan*/ * vdev_devid; int /*<<< orphan*/ * vdev_name_vp; int /*<<< orphan*/ * vdev_tsd; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  ddi_devid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(vdev_t *vd)
{
	ddi_devid_t devid;
	char *minor;

	FUNC0(FUNC9(vd->vdev_spa, SCL_STATE, RW_WRITER));

	/*
	 * We must have a pathname, and it must be absolute.
	 */
	if (vd->vdev_path == NULL || vd->vdev_path[0] != '/')
		return;

	/*
	 * Only prefetch path and devid info if the device has
	 * never been opened.
	 */
	if (vd->vdev_tsd != NULL)
		return;

	if (vd->vdev_wholedisk == -1ULL) {
		size_t len = FUNC10(vd->vdev_path) + 3;
		char *buf = FUNC4(len, KM_SLEEP);

		(void) FUNC8(buf, len, "%ss0", vd->vdev_path);

		(void) FUNC7(buf, &vd->vdev_name_vp);
		FUNC5(buf, len);
	}

	if (vd->vdev_name_vp == NULL)
		(void) FUNC7(vd->vdev_path, &vd->vdev_name_vp);

	if (vd->vdev_devid != NULL &&
	    FUNC2(vd->vdev_devid, &devid, &minor) == 0) {
		(void) FUNC6(devid, minor, &vd->vdev_devid_vp);
		FUNC3(minor);
		FUNC1(devid);
	}
}