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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC1 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 union ccb* FUNC4 (struct cam_device*) ; 
 int FUNC5 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC9(struct cam_device *device, int cdb_len, int save_pages,
    int task_attr, int retry_count, int timeout, u_int8_t *data, int datalen)
{
	union ccb *ccb;
	int retval;

	ccb = FUNC4(device);

	if (ccb == NULL)
		FUNC7(1, "mode_select: couldn't allocate CCB");

	FUNC0(&ccb->csio);

	FUNC8(&ccb->csio,
			 /* retries */ retry_count,
			 /* cbfcnp */ NULL,
			 /* tag_action */ task_attr,
			 /* scsi_page_fmt */ 1,
			 /* save_pages */ save_pages,
			 /* param_buf */ data,
			 /* param_len */ datalen,
			 /* minimum_cmd_size */ cdb_len,
			 /* sense_len */ SSD_FULL_SIZE,
			 /* timeout */ timeout ? timeout : 5000);

	if (arglist & CAM_ARG_ERR_RECOVER)
		ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (((retval = FUNC5(device, ccb)) < 0)
	 || ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)) {
		if (arglist & CAM_ARG_VERBOSE) {
			FUNC2(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}
		FUNC3(ccb);
		FUNC1(device);

		if (retval < 0)
			FUNC6(1, "error sending mode select command");
		else
			FUNC7(1, "error sending mode select command");

	}

	FUNC3(ccb);
}