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
struct ccb_scsiio {int dummy; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef  int u_int32_t ;
struct scsi_mode_header_6 {int data_length; scalar_t__ medium_type; } ;
struct scsi_mode_header_10 {scalar_t__ medium_type; int /*<<< orphan*/  data_length; } ;
struct cd_softc {int minimum_command_size; int /*<<< orphan*/  mode_queue; } ;
struct cd_mode_params {int cdb_size; scalar_t__ mode_buf; int /*<<< orphan*/  alloc_len; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SF_RETRY_UA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cd_mode_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cd_mode_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union ccb* FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd_mode_params ; 
 int /*<<< orphan*/  cd_retry_count ; 
 int /*<<< orphan*/  cderror ; 
 int FUNC3 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ccb_scsiio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static int
FUNC9(struct cam_periph *periph, struct cd_mode_params *data)
{
	struct ccb_scsiio *csio;
	struct cd_softc *softc;
	union ccb *ccb;
	int cdb_size, param_len;
	int error;

	softc = (struct cd_softc *)periph->softc;

	ccb = FUNC2(periph, CAM_PRIORITY_NORMAL);

	csio = &ccb->csio;

	error = 0;

	/*
	 * If the data is formatted for the 10 byte version of the mode
	 * select parameter list, we need to use the 10 byte CDB.
	 * Otherwise, we use whatever the stored minimum command size.
	 */
	if (data->cdb_size == 10)
		cdb_size = data->cdb_size;
	else
		cdb_size = softc->minimum_command_size;

	if (cdb_size >= 10) {
		struct scsi_mode_header_10 *mode_header;
		u_int32_t data_len;

		mode_header = (struct scsi_mode_header_10 *)data->mode_buf;

		data_len = FUNC5(mode_header->data_length);

		FUNC7(0, mode_header->data_length);
		/*
		 * SONY drives do not allow a mode select with a medium_type
		 * value that has just been returned by a mode sense; use a
		 * medium_type of 0 (Default) instead.
		 */
		mode_header->medium_type = 0;

		/*
		 * Pass back whatever the drive passed to us, plus the size
		 * of the data length field.
		 */
		param_len = data_len + sizeof(mode_header->data_length);

	} else {
		struct scsi_mode_header_6 *mode_header;

		mode_header = (struct scsi_mode_header_6 *)data->mode_buf;

		param_len = mode_header->data_length + 1;

		mode_header->data_length = 0;
		/*
		 * SONY drives do not allow a mode select with a medium_type
		 * value that has just been returned by a mode sense; use a
		 * medium_type of 0 (Default) instead.
		 */
		mode_header->medium_type = 0;
	}

	/* Don't say we've got more room than we actually allocated */
	param_len = FUNC4(param_len, data->alloc_len);

	FUNC6(csio,
			     /* retries */ cd_retry_count,
			     /* cbfcnp */ NULL,
			     /* tag_action */ MSG_SIMPLE_Q_TAG,
			     /* scsi_page_fmt */ 1,
			     /* save_pages */ 0,
			     /* param_buf */ data->mode_buf,
			     /* param_len */ param_len,
			     /* minimum_cmd_size */ cdb_size,
			     /* sense_len */ SSD_FULL_SIZE,
			     /* timeout */ 50000);

	/* See comments in cdgetmode() and cd6byteworkaround(). */
	FUNC0(&softc->mode_queue, data, links);

	error = FUNC3(ccb, cderror, /*cam_flags*/CAM_RETRY_SELTO,
			 /*sense_flags*/SF_RETRY_UA);

	FUNC8(ccb);

	FUNC1(&softc->mode_queue, data, cd_mode_params, links);

	return (error);
}