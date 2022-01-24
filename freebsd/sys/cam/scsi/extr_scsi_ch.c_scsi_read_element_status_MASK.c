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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct scsi_read_element_status {int /*<<< orphan*/  byte2; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  count; int /*<<< orphan*/  sea; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  READ_ELEMENT_STATUS ; 
 int /*<<< orphan*/  READ_ELEMENT_STATUS_CURDATA ; 
 int /*<<< orphan*/  READ_ELEMENT_STATUS_DVCID ; 
 int /*<<< orphan*/  READ_ELEMENT_STATUS_VOLTAG ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_read_element_status*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ccb_scsiio *csio, u_int32_t retries,
			 void (*cbfcnp)(struct cam_periph *, union ccb *),
			 u_int8_t tag_action, int voltag, u_int32_t sea,
			 int curdata, int dvcid,
			 u_int32_t count, u_int8_t *data_ptr,
			 u_int32_t dxfer_len, u_int8_t sense_len,
			 u_int32_t timeout)
{
	struct scsi_read_element_status *scsi_cmd;

	scsi_cmd = (struct scsi_read_element_status *)&csio->cdb_io.cdb_bytes;
	FUNC0(scsi_cmd, sizeof(*scsi_cmd));

	scsi_cmd->opcode = READ_ELEMENT_STATUS;

	FUNC2(sea, scsi_cmd->sea);
	FUNC2(count, scsi_cmd->count);
	FUNC3(dxfer_len, scsi_cmd->len);
	if (dvcid)
		scsi_cmd->flags |= READ_ELEMENT_STATUS_DVCID;
	if (curdata)
		scsi_cmd->flags |= READ_ELEMENT_STATUS_CURDATA;

	if (voltag)
		scsi_cmd->byte2 |= READ_ELEMENT_STATUS_VOLTAG;

	FUNC1(csio,
		      retries,
		      cbfcnp,
		      /*flags*/ CAM_DIR_IN,
		      tag_action,
		      data_ptr,
		      dxfer_len,
		      sense_len,
		      sizeof(*scsi_cmd),
		      timeout);
}