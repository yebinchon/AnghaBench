#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* vdev_tsd; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_9__ {int /*<<< orphan*/  vd_ldi_cbs; int /*<<< orphan*/  lcb_id; } ;
typedef  TYPE_2__ vdev_disk_t ;
typedef  TYPE_2__ vdev_disk_ldi_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(vdev_t *vd)
{
	vdev_disk_t *dvd = vd->vdev_tsd;
	vdev_disk_ldi_cb_t *lcb;

	if (dvd == NULL)
		return;

	/*
	 * We have already closed the LDI handle. Clean up the LDI event
	 * callbacks and free vd->vdev_tsd.
	 */
	while ((lcb = FUNC3(&dvd->vd_ldi_cbs)) != NULL) {
		FUNC4(&dvd->vd_ldi_cbs, lcb);
		(void) FUNC1(lcb->lcb_id);
		FUNC0(lcb, sizeof (vdev_disk_ldi_cb_t));
	}
	FUNC2(&dvd->vd_ldi_cbs);
	FUNC0(dvd, sizeof (vdev_disk_t));
	vd->vdev_tsd = NULL;
}