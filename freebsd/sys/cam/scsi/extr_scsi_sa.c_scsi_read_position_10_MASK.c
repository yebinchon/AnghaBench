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
struct scsi_tape_read_position {int byte1; int /*<<< orphan*/  length; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  READ_POSITION ; 
 int SA_RPOS_EXTENDED_FORM ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_tape_read_position*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_scsiio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ccb_scsiio *csio, u_int32_t retries,
		      void (*cbfcnp)(struct cam_periph *, union ccb *),
		      u_int8_t tag_action, int service_action,
		      u_int8_t *data_ptr, u_int32_t length,
		      u_int32_t sense_len, u_int32_t timeout)
{
	struct scsi_tape_read_position *scmd;

	FUNC1(csio,
		      retries,
		      cbfcnp,
		      /*flags*/CAM_DIR_IN,
		      tag_action,
		      /*data_ptr*/data_ptr,
		      /*dxfer_len*/length,
		      sense_len,
		      sizeof(*scmd),
		      timeout);


	scmd = (struct scsi_tape_read_position *)&csio->cdb_io.cdb_bytes;
	FUNC0(scmd, sizeof(*scmd));
	scmd->opcode = READ_POSITION;
	scmd->byte1 = service_action;
	/*
	 * The length is only currently set (as of SSC4r03) if the extended
	 * form is specified.  The other forms have fixed lengths.
	 */
	if (service_action == SA_RPOS_EXTENDED_FORM)
		FUNC2(length, scmd->length);
}