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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct scsi_receive_diag {int /*<<< orphan*/  length; int /*<<< orphan*/  page_code; int /*<<< orphan*/  byte2; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  RECEIVE_DIAGNOSTIC ; 
 int /*<<< orphan*/  SRD_PCV ; 
 int /*<<< orphan*/  FUNC0 (struct ccb_scsiio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_receive_diag*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ccb_scsiio *csio, u_int32_t retries,
				void (*cbfcnp)(struct cam_periph *, union ccb*),
				uint8_t tag_action, int pcv, uint8_t page_code,
				uint8_t *data_ptr, uint16_t allocation_length,
				uint8_t sense_len, uint32_t timeout)
{
	struct scsi_receive_diag *scsi_cmd;

	scsi_cmd = (struct scsi_receive_diag *)&csio->cdb_io.cdb_bytes;
	FUNC1(scsi_cmd, 0, sizeof(*scsi_cmd));
	scsi_cmd->opcode = RECEIVE_DIAGNOSTIC;
	if (pcv) {
		scsi_cmd->byte2 |= SRD_PCV;
		scsi_cmd->page_code = page_code;
	}
	FUNC2(allocation_length, scsi_cmd->length);

	FUNC0(csio,
		      retries,
		      cbfcnp,
		      /*flags*/CAM_DIR_IN,
		      tag_action,
		      data_ptr,
		      allocation_length,
		      sense_len,
		      sizeof(*scsi_cmd),
		      timeout);
}