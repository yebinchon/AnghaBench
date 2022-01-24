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
 int AC_CONTRACT ; 
 int AC_PATH_DEREGISTERED ; 
 int AC_PATH_REGISTERED ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  ctlfeasync ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	cam_status status;

	status = FUNC1(AC_PATH_REGISTERED | AC_PATH_DEREGISTERED |
				    AC_CONTRACT, ctlfeasync, NULL, NULL);
	if (status != CAM_REQ_CMP) {
		FUNC0("ctl: Failed to attach async callback due to CAM "
		       "status 0x%x!\n", status);
	}
}