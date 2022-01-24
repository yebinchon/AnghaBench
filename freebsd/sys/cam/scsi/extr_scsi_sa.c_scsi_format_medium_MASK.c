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
typedef  scalar_t__ u_int32_t ;
struct scsi_format_medium {int byte1; int byte2; int /*<<< orphan*/  length; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_NONE ; 
 int /*<<< orphan*/  CAM_DIR_OUT ; 
 int /*<<< orphan*/  FORMAT_MEDIUM ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_format_medium*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,scalar_t__,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ccb_scsiio *csio, u_int32_t retries,
		   void (*cbfcnp)(struct cam_periph *, union ccb *),
		   u_int8_t tag_action, int byte1, int byte2, 
		   u_int8_t *data_ptr, u_int32_t dxfer_len,
		   u_int32_t sense_len, u_int32_t timeout)
{
	struct scsi_format_medium *scsi_cmd;

	scsi_cmd = (struct scsi_format_medium*)&csio->cdb_io.cdb_bytes;
	FUNC0(scsi_cmd, sizeof(*scsi_cmd));

	scsi_cmd->opcode = FORMAT_MEDIUM;

	scsi_cmd->byte1 = byte1;
	scsi_cmd->byte2 = byte2;

	FUNC2(dxfer_len, scsi_cmd->length);

	FUNC1(csio,
		      retries,
		      cbfcnp,
		      /*flags*/(dxfer_len > 0) ? CAM_DIR_OUT : CAM_DIR_NONE,
		      tag_action,
		      /*data_ptr*/ data_ptr,
		      /*dxfer_len*/ dxfer_len,
		      sense_len,
		      sizeof(*scsi_cmd),
		      timeout);
}