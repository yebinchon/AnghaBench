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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
struct tpc_list {int sense_len; int /*<<< orphan*/ * res_token; scalar_t__ res_token_valid; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  curseg; int /*<<< orphan*/  cursectors; int /*<<< orphan*/  curops; scalar_t__ abort; scalar_t__ error; scalar_t__ completed; int /*<<< orphan*/  service_action; } ;
struct scsi_receive_rod_token_information {int /*<<< orphan*/  length; int /*<<< orphan*/  list_identifier; } ;
struct scsi_receive_copy_status_lid4_data {size_t length_of_the_sense_data_field; size_t sense_data_length; int /*<<< orphan*/ * sense_data; int /*<<< orphan*/ * segments_processed; int /*<<< orphan*/  transfer_count; int /*<<< orphan*/  transfer_count_units; int /*<<< orphan*/ * estimated_status_update_delay; int /*<<< orphan*/ * operation_counter; int /*<<< orphan*/  copy_command_status; int /*<<< orphan*/  response_to_service_action; int /*<<< orphan*/ * available_data; } ;
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
 int /*<<< orphan*/  RCS_CCS_ABORTED ; 
 int /*<<< orphan*/  RCS_CCS_COMPLETED ; 
 int /*<<< orphan*/  RCS_CCS_ERROR ; 
 int /*<<< orphan*/  RCS_CCS_INPROG_FG ; 
 int /*<<< orphan*/  RCS_TC_LBAS ; 
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
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *) ; 
 struct tpc_list* FUNC18 (struct ctl_lun*,void*,int /*<<< orphan*/ ) ; 

int
FUNC19(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_receive_rod_token_information *cdb;
	struct scsi_receive_copy_status_lid4_data *data;
	struct tpc_list *list;
	struct tpc_list list_copy;
	uint8_t *ptr;
	int retval;
	int alloc_len, total_len, token_len;
	uint32_t list_id;

	FUNC0(("ctl_receive_rod_token_information\n"));

	cdb = (struct scsi_receive_rod_token_information *)ctsio->cdb;
	retval = CTL_RETVAL_COMPLETE;

	list_id = FUNC14(cdb->list_identifier);
	FUNC12(&lun->lun_lock);
	list = FUNC18(lun, list_id,
	    FUNC5(&ctsio->io_hdr.nexus));
	if (list == NULL) {
		FUNC13(&lun->lun_lock);
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
	FUNC13(&lun->lun_lock);

	token_len = list_copy.res_token_valid ? 2 + sizeof(list_copy.res_token) : 0;
	total_len = sizeof(*data) + list_copy.sense_len + 4 + token_len;
	alloc_len = FUNC14(cdb->length);

	ctsio->kern_data_ptr = FUNC9(total_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_sg_entries = 0;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_data_len = FUNC11(total_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	data = (struct scsi_receive_copy_status_lid4_data *)ctsio->kern_data_ptr;
	FUNC17(sizeof(*data) - 4 + list_copy.sense_len +
	    4 + token_len, data->available_data);
	data->response_to_service_action = list_copy.service_action;
	if (list_copy.completed) {
		if (list_copy.error)
			data->copy_command_status = RCS_CCS_ERROR;
		else if (list_copy.abort)
			data->copy_command_status = RCS_CCS_ABORTED;
		else
			data->copy_command_status = RCS_CCS_COMPLETED;
	} else
		data->copy_command_status = RCS_CCS_INPROG_FG;
	FUNC16(list_copy.curops, data->operation_counter);
	FUNC17(UINT32_MAX, data->estimated_status_update_delay);
	data->transfer_count_units = RCS_TC_LBAS;
	FUNC15(list_copy.cursectors, data->transfer_count);
	FUNC16(list_copy.curseg, data->segments_processed);
	data->length_of_the_sense_data_field = list_copy.sense_len;
	data->sense_data_length = list_copy.sense_len;
	FUNC10(data->sense_data, &list_copy.sense_data, list_copy.sense_len);

	ptr = &data->sense_data[data->length_of_the_sense_data_field];
	FUNC17(token_len, &ptr[0]);
	if (list_copy.res_token_valid) {
		FUNC16(0, &ptr[4]);
		FUNC10(&ptr[6], list_copy.res_token, sizeof(list_copy.res_token));
	}
/*
	printf("RRTI(list=%u) valid=%d\n",
	    scsi_4btoul(cdb->list_identifier), list_copy.res_token_valid);
*/
	FUNC7(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC3((union ctl_io *)ctsio);
	return (retval);
}