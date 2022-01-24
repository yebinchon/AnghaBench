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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_per_res_in {int action; int /*<<< orphan*/  length; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  PERSISTENT_RES_IN ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_per_res_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ccb_scsiio *csio, uint32_t retries, 
			   void (*cbfcnp)(struct cam_periph *, union ccb *),
			   uint8_t tag_action, int service_action,
			   uint8_t *data_ptr, uint32_t dxfer_len, int sense_len,
			   int timeout)
{
	struct scsi_per_res_in *scsi_cmd;

	scsi_cmd = (struct scsi_per_res_in *)&csio->cdb_io.cdb_bytes;
	FUNC0(scsi_cmd, sizeof(*scsi_cmd));

	scsi_cmd->opcode = PERSISTENT_RES_IN;
	scsi_cmd->action = service_action;
	FUNC2(dxfer_len, scsi_cmd->length);

	FUNC1(csio,
		      retries,
		      cbfcnp,
		      /*flags*/CAM_DIR_IN,
		      tag_action,
		      data_ptr,
		      dxfer_len,
		      sense_len,
		      sizeof(*scsi_cmd),
		      timeout);
}