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
struct TYPE_2__ {scalar_t__ status; int /*<<< orphan*/  path; int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {int event_enable; TYPE_1__ ccb_h; void* callback_arg; int /*<<< orphan*/ * callback; } ;
struct cam_path {int dummy; } ;
typedef  scalar_t__ cam_status ;
typedef  int /*<<< orphan*/  ac_callback_t ;

/* Variables and functions */
 int AC_FOUND_DEVICE ; 
 int AC_PATH_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  CAM_XPT_PATH_ID ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 scalar_t__ FUNC2 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ccb_setasync*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ccb_setasync*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xptsetasyncbusfunc ; 
 int /*<<< orphan*/  xptsetasyncfunc ; 

cam_status
FUNC9(int event, ac_callback_t *cbfunc, void *cbarg,
		   struct cam_path *path)
{
	struct ccb_setasync csa;
	cam_status status;
	int xptpath = 0;

	if (path == NULL) {
		status = FUNC2(&path, /*periph*/NULL, CAM_XPT_PATH_ID,
					 CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
		if (status != CAM_REQ_CMP)
			return (status);
		FUNC6(path);
		xptpath = 1;
	}

	FUNC8(&csa.ccb_h, path, CAM_PRIORITY_NORMAL);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = event;
	csa.callback = cbfunc;
	csa.callback_arg = cbarg;
	FUNC1((union ccb *)&csa);
	status = csa.ccb_h.status;

	FUNC0(csa.ccb_h.path, CAM_DEBUG_TRACE,
	    ("xpt_register_async: func %p\n", cbfunc));

	if (xptpath) {
		FUNC7(path);
		FUNC5(path);
	}

	if ((status == CAM_REQ_CMP) &&
	    (csa.event_enable & AC_FOUND_DEVICE)) {
		/*
		 * Get this peripheral up to date with all
		 * the currently existing devices.
		 */
		FUNC4(xptsetasyncfunc, &csa);
	}
	if ((status == CAM_REQ_CMP) &&
	    (csa.event_enable & AC_PATH_REGISTERED)) {
		/*
		 * Get this peripheral up to date with all
		 * the currently existing buses.
		 */
		FUNC3(xptsetasyncbusfunc, &csa);
	}

	return (status);
}