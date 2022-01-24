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
 int /*<<< orphan*/  cdasync ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	cam_status status;

	/*
	 * Install a global async callback.  This callback will
	 * receive async callbacks like "new device found".
	 */
	status = FUNC1(AC_FOUND_DEVICE, cdasync, NULL, NULL);

	if (status != CAM_REQ_CMP) {
		FUNC0("cd: Failed to attach master async callback "
		       "due to status 0x%x!\n", status);
	}
}