#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_data {int dummy; } ;
struct TYPE_7__ {scalar_t__ sense_resid; scalar_t__ sense_len; struct scsi_sense_data sense_data; } ;
struct TYPE_6__ {int status; int /*<<< orphan*/  flags; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned long long uint32_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct format_defect_list_header {int /*<<< orphan*/  byte2; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  fh ;
typedef  int cam_status ;

/* Variables and functions */
 int CAM_ARG_ERR_RECOVER ; 
 int CAM_ARG_VERBOSE ; 
 int CAM_AUTOSNS_VALID ; 
 int /*<<< orphan*/  CAM_DEV_QFRZDIS ; 
 int /*<<< orphan*/  CAM_EPF_ALL ; 
 int /*<<< orphan*/  CAM_ESF_ALL ; 
 int /*<<< orphan*/  CAM_PASS_ERR_RECOVER ; 
 int CAM_REQ_CMP ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FU_DLH_IMMED ; 
 int /*<<< orphan*/  FU_FMT_DATA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int SSD_KEY_NOT_READY ; 
 int arglist ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct format_defect_list_header*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 
 union ccb* FUNC5 (struct cam_device*) ; 
 int FUNC6 (struct cam_device*,union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int,char**,char*) ; 
 unsigned long long FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_sense_data*,scalar_t__,int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct scsi_sense_data*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct cam_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct cam_device*,int,char**,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (char const*,...) ; 

__attribute__((used)) static int
FUNC22(struct cam_device *device, int argc, char **argv,
	   char *combinedopt, int task_attr, int retry_count, int timeout)
{
	union ccb *ccb;
	int c;
	int ycount = 0, quiet = 0;
	int error = 0, retval = 0;
	int use_timeout = 10800 * 1000;
	int immediate = 1;
	struct format_defect_list_header fh;
	u_int8_t *data_ptr = NULL;
	u_int32_t dxfer_len = 0;
	u_int8_t byte2 = 0;
	int num_warnings = 0;
	int reportonly = 0;

	ccb = FUNC5(device);

	if (ccb == NULL) {
		FUNC21("scsiformat: error allocating ccb");
		return (1);
	}

	FUNC0(&ccb->csio);

	while ((c = FUNC11(argc, argv, combinedopt)) != -1) {
		switch(c) {
		case 'q':
			quiet++;
			break;
		case 'r':
			reportonly = 1;
			break;
		case 'w':
			immediate = 0;
			break;
		case 'y':
			ycount++;
			break;
		}
	}

	if (reportonly)
		goto doreport;

	if (quiet == 0 && ycount == 0) {
		FUNC9(stdout, "You are about to REMOVE ALL DATA from the "
			"following device:\n");

		error = FUNC18(device, argc, argv, combinedopt,
				      task_attr, retry_count, timeout);

		if (error != 0) {
			FUNC21("scsiformat: error sending inquiry");
			goto scsiformat_bailout;
		}
	}

	if (ycount == 0) {
		if (!FUNC10()) {
			error = 1;
			goto scsiformat_bailout;
		}
	}

	if (timeout != 0)
		use_timeout = timeout;

	if (quiet == 0) {
		FUNC9(stdout, "Current format timeout is %d seconds\n",
			use_timeout / 1000);
	}

	/*
	 * If the user hasn't disabled questions and didn't specify a
	 * timeout on the command line, ask them if they want the current
	 * timeout.
	 */
	if ((ycount == 0)
	 && (timeout == 0)) {
		char str[1024];
		int new_timeout = 0;

		FUNC9(stdout, "Enter new timeout in seconds or press\n"
			"return to keep the current timeout [%d] ",
			use_timeout / 1000);

		if (FUNC8(str, sizeof(str), stdin) != NULL) {
			if (str[0] != '\0')
				new_timeout = FUNC1(str);
		}

		if (new_timeout != 0) {
			use_timeout = new_timeout * 1000;
			FUNC9(stdout, "Using new timeout value %d\n",
				use_timeout / 1000);
		}
	}

	/*
	 * Keep this outside the if block below to silence any unused
	 * variable warnings.
	 */
	FUNC2(&fh, sizeof(fh));

	/*
	 * If we're in immediate mode, we've got to include the format
	 * header
	 */
	if (immediate != 0) {
		fh.byte2 = FU_DLH_IMMED;
		data_ptr = (u_int8_t *)&fh;
		dxfer_len = sizeof(fh);
		byte2 = FU_FMT_DATA;
	} else if (quiet == 0) {
		FUNC9(stdout, "Formatting...");
		FUNC7(stdout);
	}

	FUNC14(&ccb->csio,
			 /* retries */ retry_count,
			 /* cbfcnp */ NULL,
			 /* tag_action */ task_attr,
			 /* byte2 */ byte2,
			 /* ileave */ 0,
			 /* data_ptr */ data_ptr,
			 /* dxfer_len */ dxfer_len,
			 /* sense_len */ SSD_FULL_SIZE,
			 /* timeout */ use_timeout);

	/* Disable freezing the device queue */
	ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

	if (arglist & CAM_ARG_ERR_RECOVER)
		ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

	if (((retval = FUNC6(device, ccb)) < 0)
	 || ((immediate == 0)
	   && ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP))) {
		const char errstr[] = "error sending format command";

		if (retval < 0)
			FUNC20(errstr);
		else
			FUNC21(errstr);

		if (arglist & CAM_ARG_VERBOSE) {
			FUNC3(device, ccb, CAM_ESF_ALL,
					CAM_EPF_ALL, stderr);
		}
		error = 1;
		goto scsiformat_bailout;
	}

	/*
	 * If we ran in non-immediate mode, we already checked for errors
	 * above and printed out any necessary information.  If we're in
	 * immediate mode, we need to loop through and get status
	 * information periodically.
	 */
	if (immediate == 0) {
		if (quiet == 0) {
			FUNC9(stdout, "Format Complete\n");
		}
		goto scsiformat_bailout;
	}

doreport:
	do {
		cam_status status;

		FUNC0(&ccb->csio);

		/*
		 * There's really no need to do error recovery or
		 * retries here, since we're just going to sit in a
		 * loop and wait for the device to finish formatting.
		 */
		FUNC17(&ccb->csio,
				     /* retries */ 0,
				     /* cbfcnp */ NULL,
				     /* tag_action */ task_attr,
				     /* sense_len */ SSD_FULL_SIZE,
				     /* timeout */ 5000);

		/* Disable freezing the device queue */
		ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

		retval = FUNC6(device, ccb);

		/*
		 * If we get an error from the ioctl, bail out.  SCSI
		 * errors are expected.
		 */
		if (retval < 0) {
			FUNC20("error sending TEST UNIT READY command");
			error = 1;
			goto scsiformat_bailout;
		}

		status = ccb->ccb_h.status & CAM_STATUS_MASK;

		if ((status != CAM_REQ_CMP)
		 && (status == CAM_SCSI_STATUS_ERROR)
		 && ((ccb->ccb_h.status & CAM_AUTOSNS_VALID) != 0)) {
			struct scsi_sense_data *sense;
			int error_code, sense_key, asc, ascq;

			sense = &ccb->csio.sense_data;
			FUNC13(sense, ccb->csio.sense_len -
			    ccb->csio.sense_resid, &error_code, &sense_key,
			    &asc, &ascq, /*show_errors*/ 1);

			/*
			 * According to the SCSI-2 and SCSI-3 specs, a
			 * drive that is in the middle of a format should
			 * return NOT READY with an ASC of "logical unit
			 * not ready, format in progress".  The sense key
			 * specific bytes will then be a progress indicator.
			 */
			if ((sense_key == SSD_KEY_NOT_READY)
			 && (asc == 0x04) && (ascq == 0x04)) {
				uint8_t sks[3];

				if ((FUNC15(sense, ccb->csio.sense_len -
				     ccb->csio.sense_resid, sks) == 0)
				 && (quiet == 0)) {
					uint32_t val;
					u_int64_t percentage;

					val = FUNC12(&sks[1]);
					percentage = 10000ull * val;

					FUNC9(stdout,
						"\rFormatting:  %jd.%02u %% "
						"(%llu/%d) done",
						(uintmax_t)(percentage /
						(0x10000 * 100)),
						(unsigned)((percentage /
						0x10000) % 100),
						val, 0x10000);
					FUNC7(stdout);
				} else if ((quiet == 0)
					&& (++num_warnings <= 1)) {
					FUNC21("Unexpected SCSI Sense Key "
					      "Specific value returned "
					      "during format:");
					FUNC16(device, &ccb->csio,
							 stderr);
					FUNC21("Unable to print status "
					      "information, but format will "
					      "proceed.");
					FUNC21("will exit when format is "
					      "complete");
				}
				FUNC19(1);
			} else {
				FUNC21("Unexpected SCSI error during format");
				FUNC3(device, ccb, CAM_ESF_ALL,
						CAM_EPF_ALL, stderr);
				error = 1;
				goto scsiformat_bailout;
			}

		} else if (status != CAM_REQ_CMP) {
			FUNC21("Unexpected CAM status %#x", status);
			if (arglist & CAM_ARG_VERBOSE)
				FUNC3(device, ccb, CAM_ESF_ALL,
						CAM_EPF_ALL, stderr);
			error = 1;
			goto scsiformat_bailout;
		}

	} while((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP);

	if (quiet == 0)
		FUNC9(stdout, "\nFormat Complete\n");

scsiformat_bailout:

	FUNC4(ccb);

	return (error);
}