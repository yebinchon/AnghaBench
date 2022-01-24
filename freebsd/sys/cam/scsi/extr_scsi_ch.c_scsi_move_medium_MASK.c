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
struct scsi_move_medium {int /*<<< orphan*/  invert; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  tea; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_NONE ; 
 int /*<<< orphan*/  MOVE_MEDIUM ; 
 int /*<<< orphan*/  MOVE_MEDIUM_INVERT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_move_medium*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ccb_scsiio *csio, u_int32_t retries,
		 void (*cbfcnp)(struct cam_periph *, union ccb *),
		 u_int8_t tag_action, u_int32_t tea, u_int32_t src,
		 u_int32_t dst, int invert, u_int8_t sense_len,
		 u_int32_t timeout)
{
	struct scsi_move_medium *scsi_cmd;

	scsi_cmd = (struct scsi_move_medium *)&csio->cdb_io.cdb_bytes;
	FUNC0(scsi_cmd, sizeof(*scsi_cmd));

	scsi_cmd->opcode = MOVE_MEDIUM;

	FUNC2(tea, scsi_cmd->tea);
	FUNC2(src, scsi_cmd->src);
	FUNC2(dst, scsi_cmd->dst);

	if (invert)
		scsi_cmd->invert |= MOVE_MEDIUM_INVERT;

	FUNC1(csio,
		      retries,
		      cbfcnp,
		      /*flags*/ CAM_DIR_NONE,
		      tag_action,
		      /*data_ptr*/ NULL,
		      /*dxfer_len*/ 0,
		      sense_len,
		      sizeof(*scsi_cmd),
		      timeout);
}