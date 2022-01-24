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
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct scsi_read_buffer_16 {int byte2; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct scsi_read_buffer {int byte2; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct ctl_scsiio {int* cdb; int* kern_data_ptr; int /*<<< orphan*/  be_move_done; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_total_len; scalar_t__ kern_data_len; } ;
struct ctl_lun {int* write_buffer; } ;
typedef  int /*<<< orphan*/  echo_descr ;
typedef  int /*<<< orphan*/  descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 scalar_t__ CTL_WRITE_BUFFER_SIZE ; 
 int /*<<< orphan*/  M_CTL ; 
 int /*<<< orphan*/  M_WAITOK ; 
#define  READ_BUFFER 129 
#define  READ_BUFFER_16 128 
 int RWB_MODE ; 
 int RWB_MODE_DESCR ; 
 int RWB_MODE_ECHO_DESCR ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_scsiio*) ; 
 int* FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int*) ; 

int
FUNC13(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	uint64_t buffer_offset;
	uint32_t len;
	uint8_t byte2;
	static uint8_t descr[4];
	static uint8_t echo_descr[4] = { 0 };

	FUNC0(("ctl_read_buffer\n"));

	switch (ctsio->cdb[0]) {
	case READ_BUFFER: {
		struct scsi_read_buffer *cdb;

		cdb = (struct scsi_read_buffer *)ctsio->cdb;
		buffer_offset = FUNC9(cdb->offset);
		len = FUNC9(cdb->length);
		byte2 = cdb->byte2;
		break;
	}
	case READ_BUFFER_16: {
		struct scsi_read_buffer_16 *cdb;

		cdb = (struct scsi_read_buffer_16 *)ctsio->cdb;
		buffer_offset = FUNC11(cdb->offset);
		len = FUNC10(cdb->length);
		byte2 = cdb->byte2;
		break;
	}
	default: /* This shouldn't happen. */
		FUNC5(ctsio);
		FUNC3((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	if (buffer_offset > CTL_WRITE_BUFFER_SIZE ||
	    buffer_offset + len > CTL_WRITE_BUFFER_SIZE) {
		FUNC4(ctsio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 6,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC3((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	if ((byte2 & RWB_MODE) == RWB_MODE_DESCR) {
		descr[0] = 0;
		FUNC12(CTL_WRITE_BUFFER_SIZE, &descr[1]);
		ctsio->kern_data_ptr = descr;
		len = FUNC8(len, sizeof(descr));
	} else if ((byte2 & RWB_MODE) == RWB_MODE_ECHO_DESCR) {
		ctsio->kern_data_ptr = echo_descr;
		len = FUNC8(len, sizeof(echo_descr));
	} else {
		if (lun->write_buffer == NULL) {
			lun->write_buffer = FUNC7(CTL_WRITE_BUFFER_SIZE,
			    M_CTL, M_WAITOK);
		}
		ctsio->kern_data_ptr = lun->write_buffer + buffer_offset;
	}
	ctsio->kern_data_len = len;
	ctsio->kern_total_len = len;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_sg_entries = 0;
	FUNC6(ctsio);
	ctsio->be_move_done = ctl_config_move_done;
	FUNC2((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}