#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vdev_delayed_close; int /*<<< orphan*/  vdev_spa; scalar_t__ vdev_reopening; TYPE_2__* vdev_tsd; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_6__ {scalar_t__ vd_ldi_offline; int /*<<< orphan*/ * vd_lh; int /*<<< orphan*/ * vd_devid; int /*<<< orphan*/ * vd_minor; } ;
typedef  TYPE_2__ vdev_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(vdev_t *vd)
{
	vdev_disk_t *dvd = vd->vdev_tsd;

	if (vd->vdev_reopening || dvd == NULL)
		return;

	if (dvd->vd_minor != NULL) {
		FUNC1(dvd->vd_minor);
		dvd->vd_minor = NULL;
	}

	if (dvd->vd_devid != NULL) {
		FUNC0(dvd->vd_devid);
		dvd->vd_devid = NULL;
	}

	if (dvd->vd_lh != NULL) {
		(void) FUNC2(dvd->vd_lh, FUNC3(vd->vdev_spa), kcred);
		dvd->vd_lh = NULL;
	}

	vd->vdev_delayed_close = B_FALSE;
	/*
	 * If we closed the LDI handle due to an offline notify from LDI,
	 * don't free vd->vdev_tsd or unregister the callbacks here;
	 * the offline finalize callback or a reopen will take care of it.
	 */
	if (dvd->vd_ldi_offline)
		return;

	FUNC4(vd);
}