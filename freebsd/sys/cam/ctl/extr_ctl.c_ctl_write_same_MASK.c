#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct scsi_write_same_16 {int byte2; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct scsi_write_same_10 {int byte2; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/ * ctl_private; } ;
struct ctl_scsiio {int* cdb; int kern_data_len; int kern_total_len; TYPE_2__ io_hdr; int /*<<< orphan*/  be_move_done; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; int /*<<< orphan*/  kern_data_ptr; int /*<<< orphan*/  io_cont; } ;
struct ctl_lun {TYPE_3__* backend; TYPE_1__* be_lun; } ;
struct ctl_lba_len_flags {int len; int flags; scalar_t__ lba; } ;
struct TYPE_6__ {int (* config_write ) (union ctl_io*) ;} ;
struct TYPE_4__ {scalar_t__ maxlba; int blocksize; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CTL_FLAG_ALLOCATED ; 
 int CTL_FLAG_IO_CONT ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 size_t CTL_PRIV_LBA_LEN ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  M_CTL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SWS_ANCHOR ; 
 int SWS_NDOB ; 
 int SWS_UNMAP ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ UINT64_MAX ; 
#define  WRITE_SAME_10 129 
#define  WRITE_SAME_16 128 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_scsiio*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctl_scsiio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctl_write_same_cont ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (union ctl_io*) ; 

int
FUNC15(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct ctl_lba_len_flags *lbalen;
	const char *val;
	uint64_t lba, ival;
	uint32_t num_blocks;
	int len, retval;
	uint8_t byte2;

	FUNC0(("ctl_write_same\n"));

	switch (ctsio->cdb[0]) {
	case WRITE_SAME_10: {
		struct scsi_write_same_10 *cdb;

		cdb = (struct scsi_write_same_10 *)ctsio->cdb;

		lba = FUNC12(cdb->addr);
		num_blocks = FUNC11(cdb->length);
		byte2 = cdb->byte2;
		break;
	}
	case WRITE_SAME_16: {
		struct scsi_write_same_16 *cdb;

		cdb = (struct scsi_write_same_16 *)ctsio->cdb;

		lba = FUNC13(cdb->addr);
		num_blocks = FUNC12(cdb->length);
		byte2 = cdb->byte2;
		break;
	}
	default:
		/*
		 * We got a command we don't support.  This shouldn't
		 * happen, commands should be filtered out above us.
		 */
		FUNC7(ctsio);
		FUNC4((union ctl_io *)ctsio);

		return (CTL_RETVAL_COMPLETE);
		break; /* NOTREACHED */
	}

	/* ANCHOR flag can be used only together with UNMAP */
	if ((byte2 & SWS_UNMAP) == 0 && (byte2 & SWS_ANCHOR) != 0) {
		FUNC6(ctsio, /*sks_valid*/ 1,
		    /*command*/ 1, /*field*/ 1, /*bit_valid*/ 1, /*bit*/ 0);
		FUNC4((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	/*
	 * The first check is to make sure we're in bounds, the second
	 * check is to catch wrap-around problems.  If the lba + num blocks
	 * is less than the lba, then we've wrapped around and the block
	 * range is invalid anyway.
	 */
	if (((lba + num_blocks) > (lun->be_lun->maxlba + 1))
	 || ((lba + num_blocks) < lba)) {
		FUNC8(ctsio,
		    FUNC2(lba, lun->be_lun->maxlba + 1));
		FUNC4((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	/* Zero number of blocks means "to the last logical block" */
	if (num_blocks == 0) {
		ival = UINT64_MAX;
		val = FUNC9(lun->be_lun->options,
		    "write_same_max_lba", NULL);
		if (val != NULL)
			FUNC5(val, &ival);
		if ((lun->be_lun->maxlba + 1) - lba > ival) {
			FUNC6(ctsio,
			    /*sks_valid*/ 1, /*command*/ 1,
			    /*field*/ ctsio->cdb[0] == WRITE_SAME_10 ? 7 : 10,
			    /*bit_valid*/ 0, /*bit*/ 0);
			FUNC4((union ctl_io *)ctsio);
			return (CTL_RETVAL_COMPLETE);
		}
		if ((lun->be_lun->maxlba + 1) - lba > UINT32_MAX) {
			ctsio->io_hdr.flags |= CTL_FLAG_IO_CONT;
			ctsio->io_cont = ctl_write_same_cont;
			num_blocks = 1 << 31;
		} else
			num_blocks = (lun->be_lun->maxlba + 1) - lba;
	}

	len = lun->be_lun->blocksize;

	/*
	 * If we've got a kernel request that hasn't been malloced yet,
	 * malloc it and tell the caller the data buffer is here.
	 */
	if ((byte2 & SWS_NDOB) == 0 &&
	    (ctsio->io_hdr.flags & CTL_FLAG_ALLOCATED) == 0) {
		ctsio->kern_data_ptr = FUNC10(len, M_CTL, M_WAITOK);
		ctsio->kern_data_len = len;
		ctsio->kern_total_len = len;
		ctsio->kern_rel_offset = 0;
		ctsio->kern_sg_entries = 0;
		ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
		ctsio->be_move_done = ctl_config_move_done;
		FUNC3((union ctl_io *)ctsio);

		return (CTL_RETVAL_COMPLETE);
	}

	lbalen = (struct ctl_lba_len_flags *)&ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
	lbalen->lba = lba;
	lbalen->len = num_blocks;
	lbalen->flags = byte2;
	retval = lun->backend->config_write((union ctl_io *)ctsio);

	return (retval);
}