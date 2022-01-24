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
struct scsi_security_protocol_out {int byte4; int /*<<< orphan*/  length; int /*<<< orphan*/  security_protocol_specific; int /*<<< orphan*/  security_protocol; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_OUT ; 
 int /*<<< orphan*/  SECURITY_PROTOCOL_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_security_protocol_out*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ccb_scsiio *csio, uint32_t retries, 
			   void (*cbfcnp)(struct cam_periph *, union ccb *),
			   uint8_t tag_action, uint32_t security_protocol,
			   uint32_t security_protocol_specific, int byte4,
			   uint8_t *data_ptr, uint32_t dxfer_len, int sense_len,
			   int timeout)
{
	struct scsi_security_protocol_out *scsi_cmd;

	scsi_cmd = (struct scsi_security_protocol_out *)&csio->cdb_io.cdb_bytes;
	FUNC0(scsi_cmd, sizeof(*scsi_cmd));

	scsi_cmd->opcode = SECURITY_PROTOCOL_OUT;

	scsi_cmd->security_protocol = security_protocol;
	FUNC2(security_protocol_specific,
		    scsi_cmd->security_protocol_specific); 
	scsi_cmd->byte4 = byte4;
	FUNC3(dxfer_len, scsi_cmd->length);

	FUNC1(csio,
		      retries,
		      cbfcnp,
		      /*flags*/CAM_DIR_OUT,
		      tag_action,
		      data_ptr,
		      dxfer_len,
		      sense_len,
		      sizeof(*scsi_cmd),
		      timeout);
}