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
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  void* uint8_t ;
typedef  scalar_t__ uint32_t ;
struct scsi_read_defect_data_hdr_12 {int /*<<< orphan*/  length; int /*<<< orphan*/  generation; void* format; } ;
struct scsi_read_defect_data_hdr_10 {int /*<<< orphan*/  length; void* format; } ;
struct scsi_read_defect_data_12 {int /*<<< orphan*/  alloc_length; void* format; } ;
struct scsi_read_defect_data_10 {int /*<<< orphan*/  alloc_length; void* format; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {scalar_t__* cdb; int /*<<< orphan*/  be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ READ_DEFECT_DATA_10 ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(struct ctl_scsiio *ctsio)
{
	struct scsi_read_defect_data_10 *ccb10;
	struct scsi_read_defect_data_12 *ccb12;
	struct scsi_read_defect_data_hdr_10 *data10;
	struct scsi_read_defect_data_hdr_12 *data12;
	uint32_t alloc_len, data_len;
	uint8_t format;

	FUNC0(("ctl_read_defect\n"));

	if (ctsio->cdb[0] == READ_DEFECT_DATA_10) {
		ccb10 = (struct scsi_read_defect_data_10 *)&ctsio->cdb;
		format = ccb10->format;
		alloc_len = FUNC6(ccb10->alloc_length);
		data_len = sizeof(*data10);
	} else {
		ccb12 = (struct scsi_read_defect_data_12 *)&ctsio->cdb;
		format = ccb12->format;
		alloc_len = FUNC7(ccb12->alloc_length);
		data_len = sizeof(*data12);
	}
	if (alloc_len == 0) {
		FUNC3(ctsio);
		FUNC2((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	ctsio->kern_data_ptr = FUNC4(data_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_rel_offset = 0;
	ctsio->kern_sg_entries = 0;
	ctsio->kern_data_len = FUNC5(data_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	if (ctsio->cdb[0] == READ_DEFECT_DATA_10) {
		data10 = (struct scsi_read_defect_data_hdr_10 *)
		    ctsio->kern_data_ptr;
		data10->format = format;
		FUNC8(0, data10->length);
	} else {
		data12 = (struct scsi_read_defect_data_hdr_12 *)
		    ctsio->kern_data_ptr;
		data12->format = format;
		FUNC8(0, data12->generation);
		FUNC9(0, data12->length);
	}

	FUNC3(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC1((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}