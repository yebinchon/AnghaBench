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
struct TYPE_2__ {int status; int /*<<< orphan*/  flags; } ;
union ccb {TYPE_1__ ccb_h; int /*<<< orphan*/  csio; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int CAM_ARG_ERR_RECOVER ; 
 int CAM_ARG_VERBOSE ; 
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int /*<<< orphan*/  CAM_PASS_ERR_RECOVER ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 union ccb* FUNC2 (struct cam_device*) ; 
 scalar_t__ FUNC3 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct cam_device *device, int task_attr, int retry_count,
	      int timeout, int quiet)
{
	int error = 0;
	union ccb *ccb;

	ccb = FUNC2(device);

	FUNC5(&ccb->csio,
			     /* retries */ retry_count,
			     /* cbfcnp */ NULL,
			     /* tag_action */ task_attr,
			     /* sense_len */ SSD_FULL_SIZE,
			     /* timeout */ timeout ? timeout : 5000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (arglist & CAM_ARG_ERR_RECOVER)
		ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

	if (FUNC3(device, ccb) < 0) {
		if (quiet == 0)
			FUNC6("error sending TEST UNIT READY command");
		FUNC1(ccb);
		return (1);
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP) {
		if (quiet == 0)
			FUNC4(stdout, "Unit is ready\n");
	} else {
		if (quiet == 0)
			FUNC4(stdout, "Unit is not ready\n");
		error = 1;

		if (arglist & CAM_ARG_VERBOSE) {
			FUNC0(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}
	}

	FUNC1(ccb);

	return (error);
}