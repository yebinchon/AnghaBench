#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  scalar_t__ uint32_t ;
struct scsi_read_capacity_data {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct scsi_read_capacity {int pmi; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int kern_data_len; int kern_total_len; int /*<<< orphan*/  be_move_done; TYPE_2__ io_hdr; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; scalar_t__ cdb; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int maxlba; int blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SRC_PMI ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

int
FUNC9(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_read_capacity *cdb;
	struct scsi_read_capacity_data *data;
	uint32_t lba;

	FUNC0(("ctl_read_capacity\n"));

	cdb = (struct scsi_read_capacity *)ctsio->cdb;

	lba = FUNC7(cdb->addr);
	if (((cdb->pmi & SRC_PMI) == 0)
	 && (lba != 0)) {
		FUNC4(/*ctsio*/ ctsio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 2,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC3((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	ctsio->kern_data_ptr = FUNC6(sizeof(*data), M_CTL, M_WAITOK | M_ZERO);
	data = (struct scsi_read_capacity_data *)ctsio->kern_data_ptr;
	ctsio->kern_data_len = sizeof(*data);
	ctsio->kern_total_len = sizeof(*data);
	ctsio->kern_rel_offset = 0;
	ctsio->kern_sg_entries = 0;

	/*
	 * If the maximum LBA is greater than 0xfffffffe, the user must
	 * issue a SERVICE ACTION IN (16) command, with the read capacity
	 * serivce action set.
	 */
	if (lun->be_lun->maxlba > 0xfffffffe)
		FUNC8(0xffffffff, data->addr);
	else
		FUNC8(lun->be_lun->maxlba, data->addr);

	/*
	 * XXX KDM this may not be 512 bytes...
	 */
	FUNC8(lun->be_lun->blocksize, data->length);

	FUNC5(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC2((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}