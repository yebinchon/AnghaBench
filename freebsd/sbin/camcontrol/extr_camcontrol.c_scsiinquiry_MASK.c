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
typedef  int /*<<< orphan*/  u_int8_t ;
struct scsi_inquiry_data {int dummy; } ;
struct cam_device {char* device_name; int /*<<< orphan*/  dev_unit_num; } ;

/* Variables and functions */
 int CAM_ARG_ERR_RECOVER ; 
 int CAM_ARG_VERBOSE ; 
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int /*<<< orphan*/  CAM_PASS_ERR_RECOVER ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHORT_INQUIRY_LENGTH ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_inquiry_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 union ccb* FUNC4 (struct cam_device*) ; 
 scalar_t__ FUNC5 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_inquiry_data*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_inquiry_data*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(struct cam_device *device, int task_attr, int retry_count,
	    int timeout)
{
	union ccb *ccb;
	struct scsi_inquiry_data *inq_buf;
	int error = 0;

	ccb = FUNC4(device);

	if (ccb == NULL) {
		FUNC12("couldn't allocate CCB");
		return (1);
	}

	/* cam_getccb cleans up the header, caller has to zero the payload */
	FUNC0(&ccb->csio);

	inq_buf = (struct scsi_inquiry_data *)FUNC8(
		sizeof(struct scsi_inquiry_data));

	if (inq_buf == NULL) {
		FUNC3(ccb);
		FUNC12("can't malloc memory for inquiry\n");
		return (1);
	}
	FUNC1(inq_buf, sizeof(*inq_buf));

	/*
	 * Note that although the size of the inquiry buffer is the full
	 * 256 bytes specified in the SCSI spec, we only tell the device
	 * that we have allocated SHORT_INQUIRY_LENGTH bytes.  There are
	 * two reasons for this:
	 *
	 *  - The SCSI spec says that when a length field is only 1 byte,
	 *    a value of 0 will be interpreted as 256.  Therefore
	 *    scsi_inquiry() will convert an inq_len (which is passed in as
	 *    a u_int32_t, but the field in the CDB is only 1 byte) of 256
	 *    to 0.  Evidently, very few devices meet the spec in that
	 *    regard.  Some devices, like many Seagate disks, take the 0 as
	 *    0, and don't return any data.  One Pioneer DVD-R drive
	 *    returns more data than the command asked for.
	 *
	 *    So, since there are numerous devices that just don't work
	 *    right with the full inquiry size, we don't send the full size.
	 *
	 *  - The second reason not to use the full inquiry data length is
	 *    that we don't need it here.  The only reason we issue a
	 *    standard inquiry is to get the vendor name, device name,
	 *    and revision so scsi_print_inquiry() can print them.
	 *
	 * If, at some point in the future, more inquiry data is needed for
	 * some reason, this code should use a procedure similar to the
	 * probe code.  i.e., issue a short inquiry, and determine from
	 * the additional length passed back from the device how much
	 * inquiry data the device supports.  Once the amount the device
	 * supports is determined, issue an inquiry for that amount and no
	 * more.
	 *
	 * KDM, 2/18/2000
	 */
	FUNC9(&ccb->csio,
		     /* retries */ retry_count,
		     /* cbfcnp */ NULL,
		     /* tag_action */ task_attr,
		     /* inq_buf */ (u_int8_t *)inq_buf,
		     /* inq_len */ SHORT_INQUIRY_LENGTH,
		     /* evpd */ 0,
		     /* page_code */ 0,
		     /* sense_len */ SSD_FULL_SIZE,
		     /* timeout */ timeout ? timeout : 5000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (arglist & CAM_ARG_ERR_RECOVER)
		ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

	if (FUNC5(device, ccb) < 0) {
		FUNC11("error sending INQUIRY command");
		FUNC3(ccb);
		return (1);
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		error = 1;

		if (arglist & CAM_ARG_VERBOSE) {
			FUNC2(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}
	}

	FUNC3(ccb);

	if (error != 0) {
		FUNC7(inq_buf);
		return (error);
	}

	FUNC6(stdout, "%s%d: ", device->device_name,
		device->dev_unit_num);
	FUNC10(inq_buf);

	FUNC7(inq_buf);

	return (0);
}