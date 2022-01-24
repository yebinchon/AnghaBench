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
struct scsi_receive_copy_operating_parameters_data {int implemented_descriptor_list_length; int /*<<< orphan*/ * list_of_implemented_descriptor_type_codes; scalar_t__ held_data_granularity; scalar_t__ inline_data_granularity; scalar_t__ data_segment_granularity; int /*<<< orphan*/  maximum_concurrent_copies; int /*<<< orphan*/  total_concurrent_copies; int /*<<< orphan*/  maximum_stream_device_transfer_size; int /*<<< orphan*/  held_data_limit; int /*<<< orphan*/  maximum_inline_data_length; int /*<<< orphan*/  maximum_segment_length; int /*<<< orphan*/  maximum_descriptor_list_length; int /*<<< orphan*/  maximum_segment_descriptor_count; int /*<<< orphan*/  maximum_cscd_descriptor_count; int /*<<< orphan*/  snlid; int /*<<< orphan*/  length; } ;
struct scsi_receive_copy_operating_parameters {int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  EC_CSCD_ID ; 
 int /*<<< orphan*/  EC_SEG_B2B ; 
 int /*<<< orphan*/  EC_SEG_REGISTER_KEY ; 
 int /*<<< orphan*/  EC_SEG_VERIFY ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RCOP_SNLID ; 
 int /*<<< orphan*/  TPC_MAX_CSCDS ; 
 int TPC_MAX_INLINE ; 
 int TPC_MAX_LIST ; 
 int /*<<< orphan*/  TPC_MAX_LISTS ; 
 int TPC_MAX_SEG ; 
 int /*<<< orphan*/  TPC_MAX_SEGS ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int
FUNC8(struct ctl_scsiio *ctsio)
{
	struct scsi_receive_copy_operating_parameters *cdb;
	struct scsi_receive_copy_operating_parameters_data *data;
	int retval;
	int alloc_len, total_len;

	FUNC0(("ctl_report_supported_tmf\n"));

	cdb = (struct scsi_receive_copy_operating_parameters *)ctsio->cdb;

	retval = CTL_RETVAL_COMPLETE;

	total_len = sizeof(*data) + 4;
	alloc_len = FUNC5(cdb->length);

	ctsio->kern_data_ptr = FUNC3(total_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_sg_entries = 0;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_data_len = FUNC4(total_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	data = (struct scsi_receive_copy_operating_parameters_data *)ctsio->kern_data_ptr;
	FUNC7(sizeof(*data) - 4 + 4, data->length);
	data->snlid = RCOP_SNLID;
	FUNC6(TPC_MAX_CSCDS, data->maximum_cscd_descriptor_count);
	FUNC6(TPC_MAX_SEGS, data->maximum_segment_descriptor_count);
	FUNC7(TPC_MAX_LIST, data->maximum_descriptor_list_length);
	FUNC7(TPC_MAX_SEG, data->maximum_segment_length);
	FUNC7(TPC_MAX_INLINE, data->maximum_inline_data_length);
	FUNC7(0, data->held_data_limit);
	FUNC7(0, data->maximum_stream_device_transfer_size);
	FUNC6(TPC_MAX_LISTS, data->total_concurrent_copies);
	data->maximum_concurrent_copies = TPC_MAX_LISTS;
	data->data_segment_granularity = 0;
	data->inline_data_granularity = 0;
	data->held_data_granularity = 0;
	data->implemented_descriptor_list_length = 4;
	data->list_of_implemented_descriptor_type_codes[0] = EC_SEG_B2B;
	data->list_of_implemented_descriptor_type_codes[1] = EC_SEG_VERIFY;
	data->list_of_implemented_descriptor_type_codes[2] = EC_SEG_REGISTER_KEY;
	data->list_of_implemented_descriptor_type_codes[3] = EC_CSCD_ID;

	FUNC2(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC1((union ctl_io *)ctsio);
	return (retval);
}