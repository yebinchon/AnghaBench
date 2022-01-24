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
typedef  int uint16_t ;
struct cam_device {char* device_name; int /*<<< orphan*/  dev_unit_num; } ;

/* Variables and functions */
 int ATA_STATUS_ERROR ; 
 int CAM_ARG_VERBOSE ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cam_device*,union ccb*,int*,int*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct cam_device *device, union ccb *ccb)
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
		FUNC3("Can't get ATA command status");
		return (retval);
	}

	if (status & ATA_STATUS_ERROR) {
		FUNC0(device, ccb, CAM_ESF_ALL,
		    CAM_EPF_ALL, stderr);
	        return (1);
	}

	FUNC2("%s%d: ", device->device_name, device->dev_unit_num);
	switch (count) {
	case 0x00:
		FUNC2("Standby mode\n");
		break;
	case 0x01:
		FUNC2("Standby_y mode\n");
		break;
	case 0x40:
		FUNC2("NV Cache Power Mode and the spindle is spun down or spinning down\n");
		break;
	case 0x41:
		FUNC2("NV Cache Power Mode and the spindle is spun up or spinning up\n");
		break;
	case 0x80:
		FUNC2("Idle mode\n");
		break;
	case 0x81:
		FUNC2("Idle_a mode\n");
		break;
	case 0x82:
		FUNC2("Idle_b mode\n");
		break;
	case 0x83:
		FUNC2("Idle_c mode\n");
		break;
	case 0xff:
		FUNC2("Active or Idle mode\n");
		break;
	default:
		FUNC2("Unknown mode 0x%02x\n", count);
		break;
	}

	return (0);
}