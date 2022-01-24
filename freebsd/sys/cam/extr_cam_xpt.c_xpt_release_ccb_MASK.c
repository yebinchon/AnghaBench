#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int /*<<< orphan*/  periph_allocated; } ;
struct cam_ed {int /*<<< orphan*/  ccbq; } ;
struct TYPE_4__ {struct cam_periph* periph; struct cam_ed* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_XPT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*,int /*<<< orphan*/ ) ; 

void
FUNC5(union ccb *free_ccb)
{
	struct	 cam_ed *device;
	struct	 cam_periph *periph;

	FUNC0(CAM_DEBUG_XPT, ("xpt_release_ccb\n"));
	FUNC3(free_ccb->ccb_h.path, MA_OWNED);
	device = free_ccb->ccb_h.path->device;
	periph = free_ccb->ccb_h.path->periph;

	FUNC2(free_ccb);
	periph->periph_allocated--;
	FUNC1(&device->ccbq);
	FUNC4(periph, 0);
}