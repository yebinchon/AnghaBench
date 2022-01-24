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
typedef  union ccb {int dummy; } ccb ;
struct TYPE_4__ {int /*<<< orphan*/  func_code; } ;
struct ccb_relsim {scalar_t__ qfrozen_cnt; scalar_t__ release_timeout; scalar_t__ openings; int /*<<< orphan*/  release_flags; TYPE_2__ ccb_h; } ;
struct cam_sim {int /*<<< orphan*/  max_dev_openings; } ;
struct cam_path {TYPE_1__* bus; struct cam_ed* device; } ;
struct cam_ed {int /*<<< orphan*/  inq_flags; scalar_t__ tag_delay_count; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct cam_sim* sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_GETDEV_CHANGED ; 
 int /*<<< orphan*/  CAM_DEV_TAG_AFTER_COUNT ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  RELSIM_RELEASE_AFTER_QEMPTY ; 
 int /*<<< orphan*/  SID_CmdQue ; 
 int /*<<< orphan*/  XPT_REL_SIMQ ; 
 int /*<<< orphan*/  FUNC0 (union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_path*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct cam_path*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct cam_path *path)
{
	struct ccb_relsim crs;
	struct cam_ed *device;
	struct cam_sim *sim;

	device = path->device;
	sim = path->bus->sim;
	device->flags &= ~CAM_DEV_TAG_AFTER_COUNT;
	device->tag_delay_count = 0;
	FUNC3(path, /*count*/1);
	device->inq_flags &= ~SID_CmdQue;
	FUNC2(path, sim->max_dev_openings);
	FUNC1(AC_GETDEV_CHANGED, path, NULL);
	FUNC4(&crs.ccb_h, path, CAM_PRIORITY_NORMAL);
	crs.ccb_h.func_code = XPT_REL_SIMQ;
	crs.release_flags = RELSIM_RELEASE_AFTER_QEMPTY;
	crs.openings
	    = crs.release_timeout
	    = crs.qfrozen_cnt
	    = 0;
	FUNC0((union ccb *)&crs);
}