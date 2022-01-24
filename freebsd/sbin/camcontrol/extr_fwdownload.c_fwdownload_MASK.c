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
struct fw_vendor {scalar_t__ type; int timeout_ms; size_t timeout_type; } ;
struct cam_device {char* device_name; int /*<<< orphan*/  dev_unit_num; } ;
typedef  char ata_params ;
typedef  scalar_t__ camcontrol_devtype ;
struct TYPE_2__ {char* timeout_desc; } ;

/* Variables and functions */
 scalar_t__ CC_DT_ATA ; 
 scalar_t__ CC_DT_SATL ; 
 scalar_t__ CC_DT_SCSI ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 scalar_t__ VENDOR_UNKNOWN ; 
 scalar_t__ FUNC0 (struct cam_device*,int,int,union ccb*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 union ccb* FUNC3 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (struct cam_device*,struct fw_vendor*,char*,int,int,int,int,int,int,char*,scalar_t__) ; 
 int FUNC9 (struct cam_device*,struct fw_vendor*,int,int,int) ; 
 struct fw_vendor* FUNC10 (struct cam_device*,char*) ; 
 char* FUNC11 (struct cam_device*,int,int,int,char*,struct fw_vendor*,int*) ; 
 TYPE_1__* fw_timeout_desc_table ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct cam_device*,int,int,int,scalar_t__*) ; 
 int FUNC14 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct cam_device*,int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int
FUNC18(struct cam_device *device, int argc, char **argv,
    char *combinedopt, int printerrors, int task_attr, int retry_count,
    int timeout)
{
	union ccb *ccb = NULL;
	struct fw_vendor *vp;
	char *fw_img_path = NULL;
	struct ata_params *ident_buf = NULL;
	camcontrol_devtype devtype;
	char *buf = NULL;
	int img_size;
	int c;
	int sim_mode = 0;
	int confirmed = 0;
	int quiet = 0;
	int retval = 0;

	while ((c = FUNC14(argc, argv, combinedopt)) != -1) {
		switch (c) {
		case 'f':
			fw_img_path = optarg;
			break;
		case 'q':
			quiet = 1;
			break;
		case 's':
			sim_mode = 1;
			break;
		case 'y':
			confirmed = 1;
			break;
		default:
			break;
		}
	}

	if (fw_img_path == NULL)
		FUNC5(1, "you must specify a firmware image file using -f "
		     "option");

	retval = FUNC13(device, retry_count, timeout, printerrors,
				 &devtype);
	if (retval != 0)
		FUNC5(1, "Unable to determine device type");

	if ((devtype == CC_DT_ATA)
	 || (devtype == CC_DT_SATL)) {
		ccb = FUNC3(device);
		if (ccb == NULL) {
			FUNC17("couldn't allocate CCB");
			retval = 1;
			goto bailout;
		}

		if (FUNC0(device, retry_count, timeout, ccb,
		    		    &ident_buf) != 0) {
			retval = 1;
			goto bailout;
		}
	} else if (devtype != CC_DT_SCSI)
		FUNC5(1, "Unsupported device type %d", devtype);

	vp = FUNC10(device, ident_buf);
	/*
	 * Bail out if we have an unknown vendor and this isn't an ATA
	 * disk.  For a SCSI disk, we have no chance of working properly
	 * with the default values in the VENDOR_UNKNOWN case.  For an ATA
	 * disk connected via an ATA transport, we may work for drives that
	 * support the ATA_DOWNLOAD_MICROCODE command.
	 */
	if (((vp == NULL)
	  || (vp->type == VENDOR_UNKNOWN))
	 && (devtype == CC_DT_SCSI))
		FUNC5(1, "Unsupported device");

	retval = FUNC9(device, vp, task_attr, retry_count, timeout);
	if (retval != 0) {
		FUNC17("Unable to get a firmware download timeout value");
		goto bailout;
	}

	buf = FUNC11(device, retry_count, timeout, quiet, fw_img_path,
	    vp, &img_size);
	if (buf == NULL) {
		retval = 1;
		goto bailout;
	}

	if (!confirmed) {
		FUNC6(stdout, "You are about to download firmware image (%s)"
		    " into the following device:\n",
		    fw_img_path);
		if (devtype == CC_DT_SCSI) {
			if (FUNC16(device, argc, argv, combinedopt,
					  MSG_SIMPLE_Q_TAG, 0, 5000) != 0) {
				FUNC17("Error sending inquiry");
				retval = 1;
				goto bailout;
			}
		} else {
			FUNC15("%s%d: ", device->device_name,
			    device->dev_unit_num);
			FUNC1(ident_buf);
			FUNC4(device);
			FUNC7(ident_buf);
		}
		FUNC6(stdout, "Using a timeout of %u ms, which is %s.\n",
			vp->timeout_ms,
			fw_timeout_desc_table[vp->timeout_type].timeout_desc);
		FUNC6(stdout, "\nIt may damage your drive. ");
		if (!FUNC12()) {
			retval = 1;
			goto bailout;
		}
	}
	if ((sim_mode != 0) && (quiet == 0))
		FUNC6(stdout, "Running in simulation mode\n");

	if (FUNC8(device, vp, buf, img_size, sim_mode, printerrors,
	    quiet, retry_count, vp->timeout_ms, fw_img_path, devtype) != 0) {
		FUNC6(stderr, "Firmware download failed\n");
		retval = 1;
		goto bailout;
	} else if (quiet == 0)
		FUNC6(stdout, "Firmware download successful\n");

bailout:
	FUNC2(ccb);
	FUNC7(buf);
	return (retval);
}