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
typedef  scalar_t__ u_int64_t ;
struct ccb_getdev {int dummy; } ;
struct cam_device {char* device_name; int /*<<< orphan*/  dev_unit_num; } ;
struct ata_params {int support2; } ;

/* Variables and functions */
#define  ATA_AMA_ACTION_FREEZE_LOCK 129 
 int ATA_AMA_ACTION_PRINT ; 
#define  ATA_AMA_ACTION_SET_MAX 128 
 int ATA_SUPPORT_AMAX_ADDR ; 
 int FUNC0 (struct cam_device*,int,int,union ccb*,struct ata_params**) ; 
 int FUNC1 (struct cam_device*,int,int,union ccb*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_params*) ; 
 int FUNC3 (struct cam_device*,int,int,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_params*,scalar_t__,int) ; 
 int FUNC5 (struct cam_device*,int,int,union ccb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 union ccb* FUNC7 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ata_params*) ; 
 scalar_t__ FUNC11 (struct cam_device*,struct ccb_getdev*) ; 
 int FUNC12 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct cam_device*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(struct cam_device *device, int retry_count, int timeout,
       int argc, char **argv, char *combinedopt)
{
	union ccb *ccb;
	struct ata_params *ident_buf;
	struct ccb_getdev cgd;
	int error, quiet, c, action, actions;
	u_int64_t nativesize, maxsize;

	actions = 0;
	quiet = 0;
	maxsize = 0;

	/* default action is to print AMA information */
	action = ATA_AMA_ACTION_PRINT;

	while ((c = FUNC12(argc, argv, combinedopt)) != -1) {
		switch(c){
		case 's':
			action = ATA_AMA_ACTION_SET_MAX;
			maxsize = FUNC15(optarg, NULL, 0);
			actions++;
			break;

		case 'f':
			action = ATA_AMA_ACTION_FREEZE_LOCK;
			actions++;
			break;

		case 'q':
			quiet++;
			break;
		}
	}

	if (actions > 1) {
		FUNC16("too many AMA actions specified");
		return (1);
	}

	if (FUNC11(device, &cgd) != 0) {
		FUNC16("couldn't get CGD");
		return (1);
	}

	ccb = FUNC7(device);
	if (ccb == NULL) {
		FUNC16("couldn't allocate CCB");
		return (1);
	}

	error = FUNC0(device, retry_count, timeout, ccb, &ident_buf);
	if (error != 0) {
		FUNC6(ccb);
		return (1);
	}

	if (quiet == 0) {
		FUNC13("%s%d: ", device->device_name, device->dev_unit_num);
		FUNC2(ident_buf);
		FUNC8(device);
	}

	if (action == ATA_AMA_ACTION_PRINT) {
		nativesize = 0;
		if (ident_buf->support2 & ATA_SUPPORT_AMAX_ADDR)
			FUNC1(device, retry_count, timeout, ccb,
					   &nativesize);
		FUNC4(ident_buf, nativesize, 1);

		FUNC6(ccb);
		FUNC10(ident_buf);
		return (error);
	}

	if (!(ident_buf->support2 & ATA_SUPPORT_AMAX_ADDR)) {
		FUNC16("Accessible Max Address is not supported by this device");
		FUNC6(ccb);
		FUNC10(ident_buf);
		return (1);
	}

	switch(action) {
	case ATA_AMA_ACTION_SET_MAX:
		error = FUNC1(device, retry_count, timeout, ccb,
					   &nativesize);
		if (error == 0) {
			error = FUNC5(device, retry_count, timeout,
				       ccb, maxsize);
			if (error == 0) {
				if (quiet == 0) {
					/* redo identify to get new values */
					error = FUNC0(device,
					    retry_count, timeout, ccb,
					    &ident_buf);
					FUNC4(ident_buf, nativesize, 1);
				}
				/* Hint CAM to reprobe the device. */
				FUNC14(device);
			}
		}
		break;

	case ATA_AMA_ACTION_FREEZE_LOCK:
		error = FUNC3(device, retry_count, timeout,
					   ccb);
		if (error == 0 && quiet == 0)
			FUNC13("Accessible Max Address has been frozen\n");
		break;

	default:
		FUNC9(1, "Option currently not supported");
	}

	FUNC6(ccb);
	FUNC10(ident_buf);

	return (error);
}