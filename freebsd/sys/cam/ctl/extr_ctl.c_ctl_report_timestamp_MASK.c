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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct scsi_report_timestamp_data {int /*<<< orphan*/ * timestamp; int /*<<< orphan*/  origin; int /*<<< orphan*/ * length; } ;
struct scsi_report_timestamp {int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RTS_ORIG_OUTSIDE ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

int
FUNC9(struct ctl_scsiio *ctsio)
{
	struct scsi_report_timestamp *cdb;
	struct scsi_report_timestamp_data *data;
	struct timeval tv;
	int64_t timestamp;
	int retval;
	int alloc_len, total_len;

	FUNC0(("ctl_report_timestamp\n"));

	cdb = (struct scsi_report_timestamp *)ctsio->cdb;

	retval = CTL_RETVAL_COMPLETE;

	total_len = sizeof(struct scsi_report_timestamp_data);
	alloc_len = FUNC6(cdb->length);

	ctsio->kern_data_ptr = FUNC4(total_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_sg_entries = 0;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_data_len = FUNC5(total_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	data = (struct scsi_report_timestamp_data *)ctsio->kern_data_ptr;
	FUNC7(sizeof(*data) - 2, data->length);
	data->origin = RTS_ORIG_OUTSIDE;
	FUNC3(&tv);
	timestamp = (int64_t)tv.tv_sec * 1000 + tv.tv_usec / 1000;
	FUNC8(timestamp >> 16, data->timestamp);
	FUNC7(timestamp & 0xffff, &data->timestamp[4]);

	FUNC2(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC1((union ctl_io *)ctsio);
	return (retval);
}