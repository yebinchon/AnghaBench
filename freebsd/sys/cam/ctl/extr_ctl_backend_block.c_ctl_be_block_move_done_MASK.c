#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; scalar_t__ port_status; int status; int /*<<< orphan*/  num_dmas; int /*<<< orphan*/  dma_bt; int /*<<< orphan*/  dma_start_bt; } ;
struct TYPE_6__ {scalar_t__ kern_data_resid; scalar_t__ kern_data_len; int /*<<< orphan*/  kern_rel_offset; } ;
union ctl_io {TYPE_4__ io_hdr; TYPE_1__ scsiio; } ;
struct ctl_lba_len_flags {int flags; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  datamove_queue; } ;
struct ctl_be_block_io {scalar_t__ bio_cmd; int /*<<< orphan*/  io; struct ctl_be_block_lun* lun; } ;
struct bintime {int dummy; } ;
struct TYPE_8__ {scalar_t__ ptr; } ;

/* Variables and functions */
 struct ctl_lba_len_flags* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BIO_READ ; 
 int CTL_FLAG_ABORT ; 
 int CTL_FLAG_DATA_MASK ; 
 int CTL_FLAG_DATA_OUT ; 
 int CTL_LLF_COMPARE ; 
 int CTL_LLF_READ ; 
 int CTL_STATUS_MASK ; 
 int CTL_STATUS_NONE ; 
 int CTL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_5__* FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bintime*) ; 
 int /*<<< orphan*/  FUNC5 (struct bintime*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct bintime*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(union ctl_io *io)
{
	struct ctl_be_block_io *beio;
	struct ctl_be_block_lun *be_lun;
	struct ctl_lba_len_flags *lbalen;
#ifdef CTL_TIME_IO
	struct bintime cur_bt;
#endif

	beio = (struct ctl_be_block_io *)FUNC2(io)->ptr;
	be_lun = beio->lun;

	FUNC1("entered\n");

#ifdef CTL_TIME_IO
	getbinuptime(&cur_bt);
	bintime_sub(&cur_bt, &io->io_hdr.dma_start_bt);
	bintime_add(&io->io_hdr.dma_bt, &cur_bt);
#endif
	io->io_hdr.num_dmas++;
	io->scsiio.kern_rel_offset += io->scsiio.kern_data_len;

	/*
	 * We set status at this point for read commands, and write
	 * commands with errors.
	 */
	if (io->io_hdr.flags & CTL_FLAG_ABORT) {
		;
	} else if ((io->io_hdr.port_status != 0) &&
	    ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
	     (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
		FUNC8(&io->scsiio, /*sks_valid*/ 1,
		    /*retry_count*/ io->io_hdr.port_status);
	} else if (io->scsiio.kern_data_resid != 0 &&
	    (io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_OUT &&
	    ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
	     (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
		FUNC9(&io->scsiio);
	} else if ((io->io_hdr.port_status == 0) &&
	    ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE)) {
		lbalen = FUNC0(beio->io);
		if (lbalen->flags & CTL_LLF_READ) {
			FUNC10(&io->scsiio);
		} else if (lbalen->flags & CTL_LLF_COMPARE) {
			/* We have two data blocks ready for comparison. */
			FUNC6(io);
		}
	}

	/*
	 * If this is a read, or a write with errors, it is done.
	 */
	if ((beio->bio_cmd == BIO_READ)
	 || ((io->io_hdr.flags & CTL_FLAG_ABORT) != 0)
	 || ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE)) {
		FUNC7(beio);
		return (0);
	}

	/*
	 * At this point, we have a write and the DMA completed
	 * successfully.  We now have to queue it to the task queue to
	 * execute the backend I/O.  That is because we do blocking
	 * memory allocations, and in the file backing case, blocking I/O.
	 * This move done routine is generally called in the SIM's
	 * interrupt context, and therefore we cannot block.
	 */
	FUNC12(&be_lun->queue_lock);
	FUNC3(&be_lun->datamove_queue, &io->io_hdr, links);
	FUNC13(&be_lun->queue_lock);
	FUNC14(be_lun->io_taskqueue, &be_lun->io_task);

	return (0);
}