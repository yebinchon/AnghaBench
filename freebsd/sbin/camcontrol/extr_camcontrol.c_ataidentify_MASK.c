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
typedef  int /*<<< orphan*/  u_int64_t ;
struct cam_device {char* device_name; int /*<<< orphan*/  dev_unit_num; } ;
struct TYPE_2__ {int command1; } ;
struct ata_params {int support2; TYPE_1__ support; } ;

/* Variables and functions */
 int ATA_SUPPORT_AMAX_ADDR ; 
 int ATA_SUPPORT_PROTECTED ; 
 int CAM_ARG_VERBOSE ; 
 int arglist ; 
 scalar_t__ FUNC0 (struct cam_device*,int,int,union ccb*,struct ata_params**) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_device*,int,int,union ccb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,int,int,union ccb*,struct ata_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 union ccb* FUNC8 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ata_params*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14(struct cam_device *device, int retry_count, int timeout)
{
	union ccb *ccb;
	struct ata_params *ident_buf;
	u_int64_t hpasize = 0, nativesize = 0;

	if ((ccb = FUNC8(device)) == NULL) {
		FUNC13("couldn't allocate CCB");
		return (1);
	}

	if (FUNC0(device, retry_count, timeout, ccb, &ident_buf) != 0) {
		FUNC7(ccb);
		return (1);
	}

	if (arglist & CAM_ARG_VERBOSE) {
		FUNC12("%s%d: Raw identify data:\n",
		    device->device_name, device->dev_unit_num);
		FUNC10((void*)ident_buf, sizeof(struct ata_params));
	}

	if (ident_buf->support.command1 & ATA_SUPPORT_PROTECTED) {
		FUNC3(device, retry_count, timeout, ccb,
				    ident_buf, &hpasize);
	}
	if (ident_buf->support2 & ATA_SUPPORT_AMAX_ADDR) {
		FUNC1(device, retry_count, timeout, ccb,
				   &nativesize);
	}

	FUNC12("%s%d: ", device->device_name, device->dev_unit_num);
	FUNC2(ident_buf);
	FUNC9(device);
	FUNC5(ident_buf);
	FUNC6(ident_buf, hpasize, 0);
	FUNC4(ident_buf, nativesize, 0);

	FUNC11(ident_buf);
	FUNC7(ccb);

	return (0);
}