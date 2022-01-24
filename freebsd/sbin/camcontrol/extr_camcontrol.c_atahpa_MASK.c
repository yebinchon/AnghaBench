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
typedef  scalar_t__ u_int64_t ;
struct ccb_getdev {int dummy; } ;
struct cam_device {char* device_name; int /*<<< orphan*/  dev_unit_num; } ;
struct ata_set_max_pwd {int /*<<< orphan*/  password; } ;
struct TYPE_2__ {int command1; int command2; } ;
struct ata_params {TYPE_1__ support; } ;
typedef  int /*<<< orphan*/  pwd ;

/* Variables and functions */
#define  ATA_HPA_ACTION_FREEZE_LOCK 132 
#define  ATA_HPA_ACTION_LOCK 131 
 int ATA_HPA_ACTION_PRINT ; 
#define  ATA_HPA_ACTION_SET_MAX 130 
#define  ATA_HPA_ACTION_SET_PWD 129 
#define  ATA_HPA_ACTION_UNLOCK 128 
 int ATA_SUPPORT_ADDRESS48 ; 
 int ATA_SUPPORT_MAXSECURITY ; 
 int ATA_SUPPORT_PROTECTED ; 
 int FUNC0 (struct cam_device*,int,int,union ccb*,struct ata_params**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_params*) ; 
 int FUNC3 (struct cam_device*,int,int,union ccb*,struct ata_params*,scalar_t__*) ; 
 int FUNC4 (struct cam_device*,int,int,union ccb*,int) ; 
 int FUNC5 (struct cam_device*,int,int,union ccb*,int) ; 
 int FUNC6 (struct cam_device*,int,int,union ccb*,int,struct ata_set_max_pwd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_params*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_device*,struct ata_params*,scalar_t__,int) ; 
 int FUNC9 (struct cam_device*,int,int,union ccb*,int,scalar_t__,int) ; 
 int FUNC10 (struct cam_device*,int,int,union ccb*,int,struct ata_set_max_pwd*) ; 
 int /*<<< orphan*/  FUNC11 (union ccb*) ; 
 union ccb* FUNC12 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct cam_device*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct ata_params*) ; 
 scalar_t__ FUNC16 (struct cam_device*,struct ccb_getdev*) ; 
 int FUNC17 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct ata_set_max_pwd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct cam_device*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

__attribute__((used)) static int
FUNC23(struct cam_device *device, int retry_count, int timeout,
       int argc, char **argv, char *combinedopt)
{
	union ccb *ccb;
	struct ata_params *ident_buf;
	struct ccb_getdev cgd;
	struct ata_set_max_pwd pwd;
	int error, confirm, quiet, c, action, actions, persist;
	int security, is48bit, pwdsize;
	u_int64_t hpasize, maxsize;

	actions = 0;
	confirm = 0;
	quiet = 0;
	maxsize = 0;
	persist = 0;
	security = 0;

	FUNC18(&pwd, 0, sizeof(pwd));

	/* default action is to print hpa information */
	action = ATA_HPA_ACTION_PRINT;
	pwdsize = sizeof(pwd.password);

	while ((c = FUNC17(argc, argv, combinedopt)) != -1) {
		switch(c){
		case 's':
			action = ATA_HPA_ACTION_SET_MAX;
			maxsize = FUNC21(optarg, NULL, 0);
			actions++;
			break;

		case 'p':
			if (FUNC1(pwd.password, pwdsize, c) != 0)
				return (1);
			action = ATA_HPA_ACTION_SET_PWD;
			security = 1;
			actions++;
			break;

		case 'l':
			action = ATA_HPA_ACTION_LOCK;
			security = 1;
			actions++;
			break;

		case 'U':
			if (FUNC1(pwd.password, pwdsize, c) != 0)
				return (1);
			action = ATA_HPA_ACTION_UNLOCK;
			security = 1;
			actions++;
			break;

		case 'f':
			action = ATA_HPA_ACTION_FREEZE_LOCK;
			security = 1;
			actions++;
			break;

		case 'P':
			persist = 1;
			break;

		case 'y':
			confirm++;
			break;

		case 'q':
			quiet++;
			break;
		}
	}

	if (actions > 1) {
		FUNC22("too many hpa actions specified");
		return (1);
	}

	if (FUNC16(device, &cgd) != 0) {
		FUNC22("couldn't get CGD");
		return (1);
	}

	ccb = FUNC12(device);
	if (ccb == NULL) {
		FUNC22("couldn't allocate CCB");
		return (1);
	}

	error = FUNC0(device, retry_count, timeout, ccb, &ident_buf);
	if (error != 0) {
		FUNC11(ccb);
		return (1);
	}

	if (quiet == 0) {
		FUNC19("%s%d: ", device->device_name, device->dev_unit_num);
		FUNC2(ident_buf);
		FUNC13(device);
	}

	if (action == ATA_HPA_ACTION_PRINT) {
		hpasize = 0;
		if (ident_buf->support.command1 & ATA_SUPPORT_PROTECTED)
			FUNC3(device, retry_count, timeout, ccb,
				    ident_buf, &hpasize);
		FUNC7(ident_buf, hpasize, 1);

		FUNC11(ccb);
		FUNC15(ident_buf);
		return (error);
	}

	if (!(ident_buf->support.command1 & ATA_SUPPORT_PROTECTED)) {
		FUNC22("HPA is not supported by this device");
		FUNC11(ccb);
		FUNC15(ident_buf);
		return (1);
	}

	if (security && !(ident_buf->support.command2 & ATA_SUPPORT_MAXSECURITY)) {
		FUNC22("HPA Security is not supported by this device");
		FUNC11(ccb);
		FUNC15(ident_buf);
		return (1);
	}

	is48bit = ident_buf->support.command2 & ATA_SUPPORT_ADDRESS48;

	/*
	 * The ATA spec requires:
	 * 1. Read native max addr is called directly before set max addr
	 * 2. Read native max addr is NOT called before any other set max call
	 */
	switch(action) {
	case ATA_HPA_ACTION_SET_MAX:
		if (confirm == 0 &&
		    FUNC8(device, ident_buf, maxsize,
		    persist) == 0) {
			FUNC11(ccb);
			FUNC15(ident_buf);
			return (1);
		}

		error = FUNC3(device, retry_count, timeout,
					    ccb, ident_buf, &hpasize);
		if (error == 0) {
			error = FUNC9(device, retry_count, timeout,
					       ccb, is48bit, maxsize, persist);
			if (error == 0) {
				if (quiet == 0) {
					/* redo identify to get new values */
					error = FUNC0(device,
					    retry_count, timeout, ccb,
					    &ident_buf);
					FUNC7(ident_buf, hpasize, 1);
				}
				/* Hint CAM to reprobe the device. */
				FUNC20(device);
			}
		}
		break;

	case ATA_HPA_ACTION_SET_PWD:
		error = FUNC6(device, retry_count, timeout,
					ccb, is48bit, &pwd);
		if (error == 0 && quiet == 0)
			FUNC19("HPA password has been set\n");
		break;

	case ATA_HPA_ACTION_LOCK:
		error = FUNC5(device, retry_count, timeout,
				    ccb, is48bit);
		if (error == 0 && quiet == 0)
			FUNC19("HPA has been locked\n");
		break;

	case ATA_HPA_ACTION_UNLOCK:
		error = FUNC10(device, retry_count, timeout,
				      ccb, is48bit, &pwd);
		if (error == 0 && quiet == 0)
			FUNC19("HPA has been unlocked\n");
		break;

	case ATA_HPA_ACTION_FREEZE_LOCK:
		error = FUNC4(device, retry_count, timeout,
					   ccb, is48bit);
		if (error == 0 && quiet == 0)
			FUNC19("HPA has been frozen\n");
		break;

	default:
		FUNC14(1, "Option currently not supported");
	}

	FUNC11(ccb);
	FUNC15(ident_buf);

	return (error);
}