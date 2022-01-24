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
struct TYPE_2__ {int /*<<< orphan*/  func_code; } ;
struct ccb_trans_settings {int /*<<< orphan*/  type; TYPE_1__ ccb_h; } ;
struct cam_periph {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NONE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CTS_TYPE_CURRENT_SETTINGS ; 
 int /*<<< orphan*/  CTS_TYPE_USER_SETTINGS ; 
 int /*<<< orphan*/  XPT_GET_TRAN_SETTINGS ; 
 int /*<<< orphan*/  XPT_SET_TRAN_SETTINGS ; 
 scalar_t__ FUNC0 (union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cam_periph *periph)
{
	struct ccb_trans_settings cts;

	FUNC2(&cts.ccb_h, periph->path, CAM_PRIORITY_NONE);
	cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
	cts.type = CTS_TYPE_USER_SETTINGS;
	FUNC1((union ccb *)&cts);
	if (FUNC0((union ccb *)&cts) != CAM_REQ_CMP) {
		return;
	}
	cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
	cts.type = CTS_TYPE_CURRENT_SETTINGS;
	FUNC1((union ccb *)&cts);
}