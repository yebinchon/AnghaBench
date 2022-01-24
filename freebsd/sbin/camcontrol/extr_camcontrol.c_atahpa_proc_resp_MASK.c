#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int ATA_ERROR_ID_NOT_FOUND ; 
 int ATA_STATUS_ERROR ; 
 int CAM_ARG_VERBOSE ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cam_device*,union ccb*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct cam_device *device, union ccb *ccb, u_int64_t *hpasize)
{
	uint8_t error = 0, ata_device = 0, status = 0;
	uint16_t count = 0;
	uint64_t lba = 0;
	int retval;

	retval = FUNC1(device, ccb, &error, &count, &lba, &ata_device,
	    &status);
	if (retval == 1) {
		if (arglist & CAM_ARG_VERBOSE) {
			FUNC0(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}
		FUNC2("Can't get ATA command status");
		return (retval);
	}

	if (status & ATA_STATUS_ERROR) {
		if (arglist & CAM_ARG_VERBOSE) {
			FUNC0(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}

		if (error & ATA_ERROR_ID_NOT_FOUND) {
			FUNC2("Max address has already been set since "
			      "last power-on or hardware reset");
		} else if (hpasize == NULL)
			FUNC2("Command failed with ATA error");

		return (1);
	}

	if (hpasize != NULL) {
		if (retval == 2 || retval == 6)
			return (1);
		*hpasize = lba;
	}

	return (0);
}