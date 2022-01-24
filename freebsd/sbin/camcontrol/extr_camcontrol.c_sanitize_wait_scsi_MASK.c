#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_data {int dummy; } ;
struct TYPE_6__ {scalar_t__ sense_resid; scalar_t__ sense_len; struct scsi_sense_data sense_data; } ;
struct TYPE_5__ {int status; int /*<<< orphan*/  flags; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct cam_device {int dummy; } ;
typedef  int cam_status ;

/* Variables and functions */
 int CAM_ARG_VERBOSE ; 
 int CAM_AUTOSNS_VALID ; 
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int CAM_REQUEUE_REQ ; 
 int CAM_REQ_CMP ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int SSD_KEY_NOT_READY ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC1 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_sense_data*,scalar_t__,int*,int*,int*,int*,int) ; 
 scalar_t__ FUNC7 (struct scsi_sense_data*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static int
FUNC13(struct cam_device *device, union ccb *ccb, int task_attr, int quiet)
{
	int warnings = 0, retval;
	cam_status status;
	u_int val, perc;

	do {
		FUNC0(&ccb->csio);

		/*
		 * There's really no need to do error recovery or
		 * retries here, since we're just going to sit in a
		 * loop and wait for the device to finish sanitizing.
		 */
		FUNC9(&ccb->csio,
				     /* retries */ 0,
				     /* cbfcnp */ NULL,
				     /* tag_action */ task_attr,
				     /* sense_len */ SSD_FULL_SIZE,
				     /* timeout */ 5000);

		/* Disable freezing the device queue */
		ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

		retval = FUNC2(device, ccb);

		/*
		 * If we get an error from the ioctl, bail out.  SCSI
		 * errors are expected.
		 */
		if (retval < 0) {
			FUNC11("error sending TEST UNIT READY command");
			return (1);
		}

		status = ccb->ccb_h.status & CAM_STATUS_MASK;
		if ((status == CAM_SCSI_STATUS_ERROR) &&
		    ((ccb->ccb_h.status & CAM_AUTOSNS_VALID) != 0)) {
			struct scsi_sense_data *sense;
			int error_code, sense_key, asc, ascq;

			sense = &ccb->csio.sense_data;
			FUNC6(sense, ccb->csio.sense_len -
			    ccb->csio.sense_resid, &error_code, &sense_key,
			    &asc, &ascq, /*show_errors*/ 1);

			/*
			 * According to the SCSI-3 spec, a drive that is in the
			 * middle of a sanitize should return NOT READY with an
			 * ASC of "logical unit not ready, sanitize in
			 * progress". The sense key specific bytes will then
			 * be a progress indicator.
			 */
			if ((sense_key == SSD_KEY_NOT_READY)
			 && (asc == 0x04) && (ascq == 0x1b)) {
				uint8_t sks[3];

				if ((FUNC7(sense, ccb->csio.sense_len -
				     ccb->csio.sense_resid, sks) == 0)
				 && (quiet == 0)) {
					val = FUNC5(&sks[1]);
					perc = 10000 * val;
					FUNC4(stdout,
					    "Sanitizing: %u.%02u%% (%d/%d)\r",
					    (perc / (0x10000 * 100)),
					    ((perc / 0x10000) % 100),
					    val, 0x10000);
					FUNC3(stdout);
				} else if ((quiet == 0) && (++warnings <= 1)) {
					FUNC12("Unexpected SCSI Sense Key "
					      "Specific value returned "
					      "during sanitize:");
					FUNC8(device, &ccb->csio,
							 stderr);
					FUNC12("Unable to print status "
					      "information, but sanitze will "
					      "proceed.");
					FUNC12("will exit when sanitize is "
					      "complete");
				}
				FUNC10(1);
			} else {
				FUNC12("Unexpected SCSI error during sanitize");
				FUNC1(device, ccb, CAM_ESF_ALL,
						CAM_EPF_ALL, stderr);
				return (1);
			}

		} else if (status != CAM_REQ_CMP && status != CAM_REQUEUE_REQ) {
			FUNC12("Unexpected CAM status %#x", status);
			if (arglist & CAM_ARG_VERBOSE)
				FUNC1(device, ccb, CAM_ESF_ALL,
						CAM_EPF_ALL, stderr);
			return (1);
		}
	} while ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP);
	return (0);
}