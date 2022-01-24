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
typedef  int /*<<< orphan*/  u_int32_t ;
struct scsi_pause {int /*<<< orphan*/  resume; int /*<<< orphan*/  op_code; } ;
struct cam_periph {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_NONE ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  PAUSE ; 
 int /*<<< orphan*/  SF_RETRY_UA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_pause*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 union ccb* FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd_retry_count ; 
 int /*<<< orphan*/  cderror ; 
 int FUNC3 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 

__attribute__((used)) static int
FUNC5(struct cam_periph *periph, u_int32_t go)
{
	struct scsi_pause *scsi_cmd;
        struct ccb_scsiio *csio;
	union ccb *ccb;
	int error;

	error = 0;

	ccb = FUNC2(periph, CAM_PRIORITY_NORMAL);

	csio = &ccb->csio;

	FUNC1(csio,
		      /* retries */ cd_retry_count,
		      /* cbfcnp */ NULL,
		      /* flags */ CAM_DIR_NONE,
		      /* tag_action */ MSG_SIMPLE_Q_TAG,
		      /* data_ptr */ NULL,
		      /* dxfer_len */ 0,
		      /* sense_len */ SSD_FULL_SIZE,
		      sizeof(struct scsi_pause),
		      /* timeout */ 50000);

	scsi_cmd = (struct scsi_pause *)&csio->cdb_io.cdb_bytes;
	FUNC0 (scsi_cmd, sizeof(*scsi_cmd));

        scsi_cmd->op_code = PAUSE;
	scsi_cmd->resume = go;

	error = FUNC3(ccb, cderror, /*cam_flags*/CAM_RETRY_SELTO,
			 /*sense_flags*/SF_RETRY_UA);

	FUNC4(ccb);

	return(error);
}