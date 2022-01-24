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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  sup_pages ;
struct scsi_vpd_supported_page_list {int length; scalar_t__* list; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int /*<<< orphan*/  CAM_PASS_ERR_RECOVER ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  SVPD_SUPPORTED_PAGE_LIST ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_vpd_supported_page_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 union ccb* FUNC4 (struct cam_device*) ; 
 scalar_t__ FUNC5 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(struct cam_device *dev, uint8_t page_id, int retry_count,
		 int timeout, int verbosemode)
{
	union ccb *ccb = NULL;
	struct scsi_vpd_supported_page_list sup_pages;
	int i;
	int retval = 0;

	ccb = FUNC4(dev);
	if (ccb == NULL) {
		FUNC7("Unable to allocate CCB");
		retval = -1;
		goto bailout;
	}

	/* cam_getccb cleans up the header, caller has to zero the payload */
	FUNC0(&ccb->csio);

	FUNC1(&sup_pages, sizeof(sup_pages));

	FUNC6(&ccb->csio,
		     /*retries*/ retry_count,
		     /*cbfcnp*/ NULL,
		     /* tag_action */ MSG_SIMPLE_Q_TAG,
		     /* inq_buf */ (u_int8_t *)&sup_pages,
		     /* inq_len */ sizeof(sup_pages),
		     /* evpd */ 1,
		     /* page_code */ SVPD_SUPPORTED_PAGE_LIST,
		     /* sense_len */ SSD_FULL_SIZE,
		     /* timeout */ timeout ? timeout : 5000);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (retry_count != 0)
		ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

	if (FUNC5(dev, ccb) < 0) {
		FUNC3(ccb);
		ccb = NULL;
		retval = -1;
		goto bailout;
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		if (verbosemode != 0)
			FUNC2(dev, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		retval = -1;
		goto bailout;
	}

	for (i = 0; i < sup_pages.length; i++) {
		if (sup_pages.list[i] == page_id) {
			retval = 1;
			goto bailout;
		}
	}
bailout:
	if (ccb != NULL)
		FUNC3(ccb);

	return (retval);
}