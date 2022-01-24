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
typedef  int uint32_t ;
struct scsi_mechanism_status_header {int state1; int state2; int /*<<< orphan*/  slots_length; scalar_t__ slots_num; int /*<<< orphan*/  lba; } ;
struct scsi_mechanism_status {int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct ctl_scsiio *ctsio)
{
	struct scsi_mechanism_status_header *hdr;
	struct scsi_mechanism_status *cdb;
	uint32_t alloc_len, data_len;

	cdb = (struct scsi_mechanism_status *)ctsio->cdb;
	alloc_len = FUNC4(cdb->length);

	data_len = sizeof(struct scsi_mechanism_status_header);
	ctsio->kern_data_ptr = FUNC2(data_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_sg_entries = 0;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_data_len = FUNC3(data_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	hdr = (struct scsi_mechanism_status_header *)ctsio->kern_data_ptr;
	hdr->state1 = 0x00;
	hdr->state2 = 0xe0;
	FUNC6(0, hdr->lba);
	hdr->slots_num = 0;
	FUNC5(0, hdr->slots_length);

	FUNC1(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC0((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}