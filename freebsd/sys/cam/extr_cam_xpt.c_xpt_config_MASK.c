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
struct TYPE_2__ {int boot_delay; int /*<<< orphan*/  boot_callout; int /*<<< orphan*/  xpt_taskq; } ;

/* Variables and functions */
 int CAM_DEBUG_BUS ; 
 int CAM_DEBUG_LUN ; 
 scalar_t__ CAM_DEBUG_NONE ; 
 int CAM_DEBUG_TARGET ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  PRIBIO ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ cam_dflags ; 
 int /*<<< orphan*/ * cam_dpath ; 
 int /*<<< orphan*/  cam_proc ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xpt_boot_delay ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  xpt_scanner_thread ; 
 TYPE_1__ xsoftc ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	/*
	 * Now that interrupts are enabled, go find our devices
	 */
	if (FUNC5(&xsoftc.xpt_taskq, 1, PRIBIO, "CAM taskq"))
		FUNC4("xpt_config: failed to create taskqueue thread.\n");

	/* Setup debugging path */
	if (cam_dflags != CAM_DEBUG_NONE) {
		if (FUNC6(&cam_dpath, NULL,
				    CAM_DEBUG_BUS, CAM_DEBUG_TARGET,
				    CAM_DEBUG_LUN) != CAM_REQ_CMP) {
			FUNC4("xpt_config: xpt_create_path() failed for debug"
			       " target %d:%d:%d, debugging disabled\n",
			       CAM_DEBUG_BUS, CAM_DEBUG_TARGET, CAM_DEBUG_LUN);
			cam_dflags = CAM_DEBUG_NONE;
		}
	} else
		cam_dpath = NULL;

	FUNC3(1);
	FUNC7();
	FUNC0(&xsoftc.boot_callout, 1);
	FUNC1(&xsoftc.boot_callout, SBT_1MS * xsoftc.boot_delay, 0,
	    xpt_boot_delay, NULL, 0);
	/* Fire up rescan thread. */
	if (FUNC2(xpt_scanner_thread, NULL, &cam_proc, NULL, 0, 0,
	    "cam", "scanner")) {
		FUNC4("xpt_config: failed to create rescan thread.\n");
	}
}