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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_read_capacity_data_long {int prot_lbppbe; int* lalba_lbp; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct scsi_read_capacity_16 {int reladr; int /*<<< orphan*/  addr; int /*<<< orphan*/  alloc_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_2__ io_hdr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; scalar_t__ cdb; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int pblockexp; int pblockoff; int flags; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  maxlba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_LUN_FLAG_UNMAP ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SRC16_LALBA_A ; 
 int SRC16_LBPME ; 
 int SRC16_LBPPBE ; 
 int SRC16_LBPRZ ; 
 int SRC16_PMI ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC13(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_read_capacity_16 *cdb;
	struct scsi_read_capacity_data_long *data;
	uint64_t lba;
	uint32_t alloc_len;

	FUNC0(("ctl_read_capacity_16\n"));

	cdb = (struct scsi_read_capacity_16 *)ctsio->cdb;

	alloc_len = FUNC8(cdb->alloc_len);
	lba = FUNC9(cdb->addr);

	if ((cdb->reladr & SRC16_PMI)
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
	data = (struct scsi_read_capacity_data_long *)ctsio->kern_data_ptr;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_sg_entries = 0;
	ctsio->kern_data_len = FUNC7(sizeof(*data), alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	FUNC10(lun->be_lun->maxlba, data->addr);
	/* XXX KDM this may not be 512 bytes... */
	FUNC12(lun->be_lun->blocksize, data->length);
	data->prot_lbppbe = lun->be_lun->pblockexp & SRC16_LBPPBE;
	FUNC11(lun->be_lun->pblockoff & SRC16_LALBA_A, data->lalba_lbp);
	if (lun->be_lun->flags & CTL_LUN_FLAG_UNMAP)
		data->lalba_lbp[0] |= SRC16_LBPME | SRC16_LBPRZ;

	FUNC5(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC2((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}