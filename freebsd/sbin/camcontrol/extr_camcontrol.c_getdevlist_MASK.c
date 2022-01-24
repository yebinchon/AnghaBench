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
struct TYPE_4__ {char* index; int status; char* periph_name; int unit_number; int generation; } ;
struct TYPE_3__ {int retry_count; int /*<<< orphan*/  flags; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_2__ cgdl; TYPE_1__ ccb_h; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_NONE ; 
#define  CAM_GDEVLIST_ERROR 131 
#define  CAM_GDEVLIST_LAST_DEVICE 130 
#define  CAM_GDEVLIST_LIST_CHANGED 129 
#define  CAM_GDEVLIST_MORE_DEVS 128 
 int /*<<< orphan*/  XPT_GDEVLIST ; 
 int /*<<< orphan*/  FUNC0 (union ccb*) ; 
 union ccb* FUNC1 (struct cam_device*) ; 
 scalar_t__ FUNC2 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int,int,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct cam_device *device)
{
	union ccb *ccb;
	char status[32];
	int error = 0;

	ccb = FUNC1(device);

	ccb->ccb_h.func_code = XPT_GDEVLIST;
	ccb->ccb_h.flags = CAM_DIR_NONE;
	ccb->ccb_h.retry_count = 1;
	ccb->cgdl.index = 0;
	ccb->cgdl.status = CAM_GDEVLIST_MORE_DEVS;
	while (ccb->cgdl.status == CAM_GDEVLIST_MORE_DEVS) {
		if (FUNC2(device, ccb) < 0) {
			FUNC5("error getting device list");
			FUNC0(ccb);
			return (1);
		}

		status[0] = '\0';

		switch (ccb->cgdl.status) {
			case CAM_GDEVLIST_MORE_DEVS:
				FUNC4(status, "MORE");
				break;
			case CAM_GDEVLIST_LAST_DEVICE:
				FUNC4(status, "LAST");
				break;
			case CAM_GDEVLIST_LIST_CHANGED:
				FUNC4(status, "CHANGED");
				break;
			case CAM_GDEVLIST_ERROR:
				FUNC4(status, "ERROR");
				error = 1;
				break;
		}

		FUNC3(stdout, "%s%d:  generation: %d index: %s status: %s\n",
			ccb->cgdl.periph_name,
			ccb->cgdl.unit_number,
			ccb->cgdl.generation,
			ccb->cgdl.index,
			status);

		/*
		 * If the list has changed, we need to start over from the
		 * beginning.
		 */
		if (ccb->cgdl.status == CAM_GDEVLIST_LIST_CHANGED)
			ccb->cgdl.index = 0;
	}

	FUNC0(ccb);

	return (error);
}