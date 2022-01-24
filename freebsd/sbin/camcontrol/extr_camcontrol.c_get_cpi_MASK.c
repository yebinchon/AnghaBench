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
struct TYPE_2__ {int status; int /*<<< orphan*/  func_code; } ;
union ccb {int /*<<< orphan*/  cpi; TYPE_1__ ccb_h; } ;
struct ccb_pathinq {int dummy; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int CAM_ARG_VERBOSE ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XPT_PATH_INQ ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ccb_pathinq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 union ccb* FUNC4 (struct cam_device*) ; 
 scalar_t__ FUNC5 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct cam_device *device, struct ccb_pathinq *cpi)
{
	union ccb *ccb;
	int retval = 0;

	ccb = FUNC4(device);
	if (ccb == NULL) {
		FUNC7("get_cpi: couldn't allocate CCB");
		return (1);
	}
	FUNC0(&ccb->cpi);
	ccb->ccb_h.func_code = XPT_PATH_INQ;
	if (FUNC5(device, ccb) < 0) {
		FUNC6("get_cpi: error sending Path Inquiry CCB");
		retval = 1;
		goto get_cpi_bailout;
	}
	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		if (arglist & CAM_ARG_VERBOSE)
			FUNC2(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		retval = 1;
		goto get_cpi_bailout;
	}
	FUNC1(&ccb->cpi, cpi, sizeof(struct ccb_pathinq));

get_cpi_bailout:
	FUNC3(ccb);
	return (retval);
}