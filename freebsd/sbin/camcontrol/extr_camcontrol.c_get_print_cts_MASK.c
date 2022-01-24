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
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int status; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_2__ cts; TYPE_1__ ccb_h; } ;
struct ccb_trans_settings {int dummy; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int CAM_ARG_VERBOSE ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CTS_TYPE_CURRENT_SETTINGS ; 
 int /*<<< orphan*/  CTS_TYPE_USER_SETTINGS ; 
 int /*<<< orphan*/  XPT_GET_TRAN_SETTINGS ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ccb_trans_settings*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 union ccb* FUNC4 (struct cam_device*) ; 
 scalar_t__ FUNC5 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(struct cam_device *device, int user_settings, int quiet,
	      struct ccb_trans_settings *cts)
{
	int retval;
	union ccb *ccb;

	retval = 0;
	ccb = FUNC4(device);

	if (ccb == NULL) {
		FUNC8("get_print_cts: error allocating ccb");
		return (1);
	}

	FUNC0(&ccb->cts);

	ccb->ccb_h.func_code = XPT_GET_TRAN_SETTINGS;

	if (user_settings == 0)
		ccb->cts.type = CTS_TYPE_CURRENT_SETTINGS;
	else
		ccb->cts.type = CTS_TYPE_USER_SETTINGS;

	if (FUNC5(device, ccb) < 0) {
		FUNC7("error sending XPT_GET_TRAN_SETTINGS CCB");
		retval = 1;
		goto get_print_cts_bailout;
	}

	if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
		FUNC8("XPT_GET_TRANS_SETTINGS CCB failed");
		if (arglist & CAM_ARG_VERBOSE)
			FUNC2(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		retval = 1;
		goto get_print_cts_bailout;
	}

	if (quiet == 0)
		FUNC6(device, &ccb->cts);

	if (cts != NULL)
		FUNC1(&ccb->cts, cts, sizeof(struct ccb_trans_settings));

get_print_cts_bailout:

	FUNC3(ccb);

	return (retval);
}