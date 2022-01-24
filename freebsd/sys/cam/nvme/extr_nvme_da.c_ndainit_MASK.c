#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  AC_FOUND_DEVICE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_LAST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 scalar_t__ nda_send_ordered ; 
 int /*<<< orphan*/  ndaasync ; 
 int /*<<< orphan*/  ndashutdown ; 
 int /*<<< orphan*/  ndasuspend ; 
 int /*<<< orphan*/  power_suspend ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  shutdown_post_sync ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	cam_status status;

	/*
	 * Install a global async callback.  This callback will
	 * receive async callbacks like "new device found".
	 */
	status = FUNC2(AC_FOUND_DEVICE, ndaasync, NULL, NULL);

	if (status != CAM_REQ_CMP) {
		FUNC1("nda: Failed to attach master async callback "
		       "due to status 0x%x!\n", status);
	} else if (nda_send_ordered) {

		/* Register our event handlers */
		if ((FUNC0(power_suspend, ndasuspend,
					   NULL, EVENTHANDLER_PRI_LAST)) == NULL)
		    FUNC1("ndainit: power event registration failed!\n");
		if ((FUNC0(shutdown_post_sync, ndashutdown,
					   NULL, SHUTDOWN_PRI_DEFAULT)) == NULL)
		    FUNC1("ndainit: shutdown event registration failed!\n");
	}
}