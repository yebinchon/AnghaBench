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
typedef  int /*<<< orphan*/  uint32_t ;
struct tpc_list {int curbytes; int /*<<< orphan*/  curseg; scalar_t__ abort; scalar_t__ error; scalar_t__ completed; } ;
struct scsi_receive_copy_status_lid1_data {int /*<<< orphan*/  transfer_count; int /*<<< orphan*/  transfer_count_units; int /*<<< orphan*/  segments_processed; int /*<<< orphan*/  copy_command_status; int /*<<< orphan*/  available_data; } ;
struct scsi_receive_copy_status_lid1 {int /*<<< orphan*/  length; int /*<<< orphan*/  list_identifier; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  tpc_lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RCS_CCS_COMPLETED ; 
 int /*<<< orphan*/  RCS_CCS_ERROR ; 
 int /*<<< orphan*/  RCS_CCS_INPROG ; 
 int /*<<< orphan*/  RCS_TC_BYTES ; 
 int /*<<< orphan*/  RCS_TC_MBYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tpc_list*,int /*<<< orphan*/ ) ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC8 (struct tpc_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 struct tpc_list* FUNC16 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC17(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_receive_copy_status_lid1 *cdb;
	struct scsi_receive_copy_status_lid1_data *data;
	struct tpc_list *list;
	struct tpc_list list_copy;
	int retval;
	int alloc_len, total_len;
	uint32_t list_id;

	FUNC0(("ctl_receive_copy_status_lid1\n"));

	cdb = (struct scsi_receive_copy_status_lid1 *)ctsio->cdb;
	retval = CTL_RETVAL_COMPLETE;

	list_id = cdb->list_identifier;
	FUNC11(&lun->lun_lock);
	list = FUNC16(lun, list_id,
	    FUNC5(&ctsio->io_hdr.nexus));
	if (list == NULL) {
		FUNC12(&lun->lun_lock);
		FUNC6(ctsio, /*sks_valid*/ 1,
		    /*command*/ 1, /*field*/ 2, /*bit_valid*/ 0,
		    /*bit*/ 0);
		FUNC4((union ctl_io *)ctsio);
		return (retval);
	}
	list_copy = *list;
	if (list->completed) {
		FUNC2(&lun->tpc_lists, list, links);
		FUNC8(list, M_CTL);
	}
	FUNC12(&lun->lun_lock);

	total_len = sizeof(*data);
	alloc_len = FUNC13(cdb->length);

	ctsio->kern_data_ptr = FUNC9(total_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_sg_entries = 0;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_data_len = FUNC10(total_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	data = (struct scsi_receive_copy_status_lid1_data *)ctsio->kern_data_ptr;
	FUNC15(sizeof(*data) - 4, data->available_data);
	if (list_copy.completed) {
		if (list_copy.error || list_copy.abort)
			data->copy_command_status = RCS_CCS_ERROR;
		else
			data->copy_command_status = RCS_CCS_COMPLETED;
	} else
		data->copy_command_status = RCS_CCS_INPROG;
	FUNC14(list_copy.curseg, data->segments_processed);
	if (list_copy.curbytes <= UINT32_MAX) {
		data->transfer_count_units = RCS_TC_BYTES;
		FUNC15(list_copy.curbytes, data->transfer_count);
	} else {
		data->transfer_count_units = RCS_TC_MBYTES;
		FUNC15(list_copy.curbytes >> 20, data->transfer_count);
	}

	FUNC7(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC3((union ctl_io *)ctsio);
	return (retval);
}