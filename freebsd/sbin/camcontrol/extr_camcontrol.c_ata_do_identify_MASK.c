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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int8_t ;
typedef  int u_int ;
struct ccb_pathinq {scalar_t__ protocol; } ;
struct ccb_getdev {scalar_t__ protocol; } ;
struct cam_device {int dummy; } ;
struct ata_params {int dummy; } ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int AP_FLAG_BYT_BLOK_BLOCKS ; 
 int AP_FLAG_TLEN_SECT_CNT ; 
 int /*<<< orphan*/  AP_PROTO_PIO_IN ; 
 scalar_t__ ATA_ATAPI_IDENTIFY ; 
 scalar_t__ ATA_ATA_IDENTIFY ; 
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 scalar_t__ PROTO_ATA ; 
 int FUNC0 (struct cam_device*,union ccb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_params*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (struct cam_device*,struct ccb_getdev*) ; 
 scalar_t__ FUNC5 (struct cam_device*,struct ccb_pathinq*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(struct cam_device *device, int retry_count, int timeout,
		union ccb *ccb, struct ata_params** ident_bufp)
{
	struct ata_params *ident_buf;
	struct ccb_pathinq cpi;
	struct ccb_getdev cgd;
	u_int i, error;
	int16_t *ptr;
	u_int8_t command, retry_command;

	if (FUNC5(device, &cpi) != 0) {
		FUNC6("couldn't get CPI");
		return (-1);
	}

	/* Neither PROTO_ATAPI or PROTO_SATAPM are used in cpi.protocol */
	if (cpi.protocol == PROTO_ATA) {
		if (FUNC4(device, &cgd) != 0) {
			FUNC6("couldn't get CGD");
			return (-1);
		}

		command = (cgd.protocol == PROTO_ATA) ?
		    ATA_ATA_IDENTIFY : ATA_ATAPI_IDENTIFY;
		retry_command = 0;
	} else {
		/* We don't know which for sure so try both */
		command = ATA_ATA_IDENTIFY;
		retry_command = ATA_ATAPI_IDENTIFY;
	}

	ptr = (uint16_t *)FUNC2(1, sizeof(struct ata_params));
	if (ptr == NULL) {
		FUNC6("can't calloc memory for identify\n");
		return (1);
	}

retry:
	error = FUNC0(device,
			   ccb,
			   /*retries*/retry_count,
			   /*flags*/CAM_DIR_IN,
			   /*protocol*/AP_PROTO_PIO_IN,
			   /*ata_flags*/AP_FLAG_BYT_BLOK_BLOCKS |
			    AP_FLAG_TLEN_SECT_CNT,
			   /*tag_action*/MSG_SIMPLE_Q_TAG,
			   /*command*/command,
			   /*features*/0,
			   /*lba*/0,
			   /*sector_count*/sizeof(struct ata_params) / 512,
			   /*data_ptr*/(u_int8_t *)ptr,
			   /*dxfer_len*/sizeof(struct ata_params),
			   /*timeout*/timeout ? timeout : 30 * 1000,
			   /*force48bit*/0);

	if (error != 0) {
		if (retry_command != 0) {
			command = retry_command;
			retry_command = 0;
			goto retry;
		}
		FUNC3(ptr);
		return (1);
	}

	ident_buf = (struct ata_params *)ptr;
	FUNC1(ident_buf);

	error = 1;
	for (i = 0; i < sizeof(struct ata_params) / 2; i++) {
		if (ptr[i] != 0)
			error = 0;
	}

	/* check for invalid (all zero) response */
	if (error != 0) {
		FUNC6("Invalid identify response detected");
		FUNC3(ptr);
		return (error);
	}

	*ident_bufp = ident_buf;

	return (0);
}