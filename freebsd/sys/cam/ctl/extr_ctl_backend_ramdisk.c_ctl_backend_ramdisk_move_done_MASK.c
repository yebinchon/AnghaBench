#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kern_sg_entries; scalar_t__ kern_data_resid; scalar_t__ kern_data_len; int /*<<< orphan*/  kern_rel_offset; int /*<<< orphan*/  kern_data_ptr; } ;
struct TYPE_8__ {int flags; scalar_t__ port_status; int status; int /*<<< orphan*/  num_dmas; int /*<<< orphan*/  dma_bt; int /*<<< orphan*/  dma_start_bt; } ;
union ctl_io {TYPE_1__ scsiio; TYPE_4__ io_hdr; } ;
struct ctl_be_ramdisk_lun {int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  cont_queue; } ;
struct ctl_be_lun {struct ctl_be_ramdisk_lun* be_lun; } ;
struct bintime {int dummy; } ;
struct TYPE_10__ {int flags; scalar_t__ len; } ;
struct TYPE_9__ {scalar_t__ len; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (union ctl_io*) ; 
 struct ctl_be_lun* FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int CTL_FLAG_ABORT ; 
 int CTL_FLAG_DATA_MASK ; 
 int CTL_FLAG_DATA_OUT ; 
 int CTL_LLF_COMPARE ; 
 int CTL_STATUS_MASK ; 
 int CTL_STATUS_NONE ; 
 int CTL_SUCCESS ; 
 int /*<<< orphan*/  M_RAMDISK ; 
 TYPE_5__* FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bintime*) ; 
 int /*<<< orphan*/  FUNC6 (struct bintime*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC8 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bintime*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(union ctl_io *io)
{
	struct ctl_be_lun *cbe_lun = FUNC1(io);
	struct ctl_be_ramdisk_lun *be_lun = cbe_lun->be_lun;
#ifdef CTL_TIME_IO
	struct bintime cur_bt;
#endif

	FUNC2(("ctl_backend_ramdisk_move_done\n"));
#ifdef CTL_TIME_IO
	getbinuptime(&cur_bt);
	bintime_sub(&cur_bt, &io->io_hdr.dma_start_bt);
	bintime_add(&io->io_hdr.dma_bt, &cur_bt);
#endif
	io->io_hdr.num_dmas++;
	if (io->scsiio.kern_sg_entries > 0)
		FUNC12(io->scsiio.kern_data_ptr, M_RAMDISK);
	io->scsiio.kern_rel_offset += io->scsiio.kern_data_len;
	if (io->io_hdr.flags & CTL_FLAG_ABORT) {
		;
	} else if (io->io_hdr.port_status != 0 &&
	    ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
	     (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
		FUNC9(&io->scsiio, /*sks_valid*/ 1,
		    /*retry_count*/ io->io_hdr.port_status);
	} else if (io->scsiio.kern_data_resid != 0 &&
	    (io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_OUT &&
	    ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
	     (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
		FUNC10(&io->scsiio);
	} else if ((io->io_hdr.port_status == 0) &&
	    ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE)) {
		if (FUNC0(io)->flags & CTL_LLF_COMPARE) {
			/* We have data block ready for comparison. */
			if (FUNC7(io))
				goto done;
		}
		if (FUNC0(io)->len > FUNC3(io)->len) {
			FUNC14(&be_lun->queue_lock);
			FUNC4(&be_lun->cont_queue,
			    &io->io_hdr, links);
			FUNC15(&be_lun->queue_lock);
			FUNC16(be_lun->io_taskqueue,
			    &be_lun->io_task);
			return (0);
		}
		FUNC11(&io->scsiio);
	}
done:
	FUNC8(io);
	return(0);
}