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
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  scalar_t__ u_int32_t ;
struct scsi_read_subchannel {int track; scalar_t__ control; scalar_t__ data_len; scalar_t__ subchan_format; int /*<<< orphan*/  byte2; int /*<<< orphan*/  byte1; int /*<<< orphan*/  op_code; } ;
struct cd_sub_channel_info {int dummy; } ;
struct cam_periph {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int /*<<< orphan*/  CD_MSF ; 
 scalar_t__ CD_MSF_FORMAT ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  READ_SUBCHANNEL ; 
 int /*<<< orphan*/  SF_RETRY_UA ; 
 int /*<<< orphan*/  SRS_SUBQ ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_read_subchannel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 union ccb* FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd_retry_count ; 
 int /*<<< orphan*/  cderror ; 
 int FUNC3 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 

__attribute__((used)) static int
FUNC6(struct cam_periph *periph, u_int32_t mode,
		 u_int32_t format, int track,
		 struct cd_sub_channel_info *data, u_int32_t len)
{
	struct scsi_read_subchannel *scsi_cmd;
        struct ccb_scsiio *csio;
	union ccb *ccb;
	int error;

	error = 0;

	ccb = FUNC2(periph, CAM_PRIORITY_NORMAL);

	csio = &ccb->csio;

	FUNC1(csio,
		      /* retries */ cd_retry_count,
		      /* cbfcnp */ NULL,
		      /* flags */ CAM_DIR_IN,
		      /* tag_action */ MSG_SIMPLE_Q_TAG,
		      /* data_ptr */ (u_int8_t *)data,
		      /* dxfer_len */ len,
		      /* sense_len */ SSD_FULL_SIZE,
		      sizeof(struct scsi_read_subchannel),
		      /* timeout */ 50000);

	scsi_cmd = (struct scsi_read_subchannel *)&csio->cdb_io.cdb_bytes;
	FUNC0 (scsi_cmd, sizeof(*scsi_cmd));

	scsi_cmd->op_code = READ_SUBCHANNEL;
	if (mode == CD_MSF_FORMAT)
		scsi_cmd->byte1 |= CD_MSF;
	scsi_cmd->byte2 = SRS_SUBQ;
	scsi_cmd->subchan_format = format;
	scsi_cmd->track = track;
	FUNC4(len, (u_int8_t *)scsi_cmd->data_len);
	scsi_cmd->control = 0;

	error = FUNC3(ccb, cderror, /*cam_flags*/CAM_RETRY_SELTO,
			 /*sense_flags*/SF_RETRY_UA);

	FUNC5(ccb);

	return(error);
}