#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  void* u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  func_code; } ;
struct ccb_relsim {void* qfrozen_cnt; void* release_timeout; void* openings; void* release_flags; TYPE_1__ ccb_h; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_DEV_QFREEZE ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  XPT_REL_SIMQ ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct cam_path*,int /*<<< orphan*/ ) ; 

u_int32_t
FUNC3(struct cam_path *path, u_int32_t relsim_flags,
		 u_int32_t openings, u_int32_t arg,
		 int getcount_only)
{
	struct ccb_relsim crs;

	FUNC0(path, CAM_DEBUG_TRACE, ("cam_release_devq(%u, %u, %u, %d)\n",
	    relsim_flags, openings, arg, getcount_only));
	FUNC2(&crs.ccb_h, path, CAM_PRIORITY_NORMAL);
	crs.ccb_h.func_code = XPT_REL_SIMQ;
	crs.ccb_h.flags = getcount_only ? CAM_DEV_QFREEZE : 0;
	crs.release_flags = relsim_flags;
	crs.openings = openings;
	crs.release_timeout = arg;
	FUNC1((union ccb *)&crs);
	return (crs.qfrozen_cnt);
}