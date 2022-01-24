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
struct scsi_inquiry_data {int version; } ;
struct TYPE_2__ {scalar_t__ status; int /*<<< orphan*/  func_code; } ;
struct ccb_getdev {struct scsi_inquiry_data inq_data; TYPE_1__ ccb_h; } ;
struct cam_periph {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  XPT_GDEV_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cam_periph *periph)
{
	struct scsi_inquiry_data *inq_data;
	struct ccb_getdev *cgd;
	int dev_scsi_version;

	FUNC0(periph, MA_OWNED);
	if ((cgd = (struct ccb_getdev *)FUNC2()) == NULL)
		return (-1);
	/*
	 * Get the device information.
	 */
	FUNC4(&cgd->ccb_h,
		      periph->path,
		      CAM_PRIORITY_NORMAL);
	cgd->ccb_h.func_code = XPT_GDEV_TYPE;
	FUNC1((union ccb *)cgd);

	if (cgd->ccb_h.status != CAM_REQ_CMP) {
		FUNC3((union ccb *)cgd);
		return -1;
	}

	inq_data = &cgd->inq_data;
	dev_scsi_version = inq_data->version;
	FUNC3((union ccb *)cgd);

	return dev_scsi_version;
}