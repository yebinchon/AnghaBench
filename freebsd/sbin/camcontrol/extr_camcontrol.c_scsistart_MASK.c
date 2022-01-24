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
 int MSG_ORDERED_Q_TAG ; 
 int MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 union ccb* FUNC2 (struct cam_device*) ; 
 scalar_t__ FUNC3 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct cam_device *device, int startstop, int loadeject,
	  int task_attr, int retry_count, int timeout)
{
	union ccb *ccb;
	int error = 0;

	ccb = FUNC2(device);

	/*
	 * If we're stopping, send an ordered tag so the drive in question
	 * will finish any previously queued writes before stopping.  If
	 * the device isn't capable of tagged queueing, or if tagged
	 * queueing is turned off, the tag action is a no-op.  We override
	 * the default simple tag, although this also has the effect of
	 * overriding the user's wishes if he wanted to specify a simple
	 * tag.
	 */
	if ((startstop == 0)
	 && (task_attr == MSG_SIMPLE_Q_TAG))
		task_attr = MSG_ORDERED_Q_TAG;

	FUNC5(&ccb->csio,
			/* retries */ retry_count,
			/* cbfcnp */ NULL,
			/* tag_action */ task_attr,
			/* start/stop */ startstop,
			/* load_eject */ loadeject,
			/* immediate */ 0,
			/* sense_len */ SSD_FULL_SIZE,
			/* timeout */ timeout ? timeout : 120000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (arglist & CAM_ARG_ERR_RECOVER)
		ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

	if (FUNC3(device, ccb) < 0) {
		FUNC6("error sending START STOP UNIT command");
		FUNC1(ccb);
		return (1);
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP)
		if (startstop) {
			FUNC4(stdout, "Unit started successfully");
			if (loadeject)
				FUNC4(stdout,", Media loaded\n");
			else
				FUNC4(stdout,"\n");
		} else {
			FUNC4(stdout, "Unit stopped successfully");
			if (loadeject)
				FUNC4(stdout, ", Media ejected\n");
			else
				FUNC4(stdout, "\n");
		}
	else {
		error = 1;
		if (startstop)
			FUNC4(stdout,
				"Error received from start unit command\n");
		else
			FUNC4(stdout,
				"Error received from stop unit command\n");

		if (arglist & CAM_ARG_VERBOSE) {
			FUNC0(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}
	}

	FUNC1(ccb);

	return (error);
}