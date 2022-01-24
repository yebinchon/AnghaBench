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
union ctl_io {int /*<<< orphan*/  scsiio; int /*<<< orphan*/  io_hdr; } ;
struct ctl_be_lun {int flags; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  input_queue; int /*<<< orphan*/  config_read_queue; int /*<<< orphan*/  config_write_queue; int /*<<< orphan*/  (* dispatch ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;int /*<<< orphan*/  datamove_queue; struct ctl_be_lun cbe_lun; } ;
struct ctl_be_block_io {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int CTL_LUN_FLAG_NO_MEDIA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (union ctl_io*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_be_block_lun*,union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_be_block_lun*,union ctl_io*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_be_block_lun*,union ctl_io*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  FUNC8 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC9 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC10 (union ctl_io*) ; 
 int /*<<< orphan*/  ctl_io_hdr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ; 

__attribute__((used)) static void
FUNC15(void *context, int pending)
{
	struct ctl_be_block_lun *be_lun = (struct ctl_be_block_lun *)context;
	struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
	union ctl_io *io;
	struct ctl_be_block_io *beio;

	FUNC0("entered\n");
	/*
	 * Fetch and process I/Os from all queues.  If we detect LUN
	 * CTL_LUN_FLAG_NO_MEDIA status here -- it is result of a race,
	 * so make response maximally opaque to not confuse initiator.
	 */
	for (;;) {
		FUNC12(&be_lun->queue_lock);
		io = (union ctl_io *)FUNC2(&be_lun->datamove_queue);
		if (io != NULL) {
			FUNC0("datamove queue\n");
			FUNC3(&be_lun->datamove_queue, &io->io_hdr,
				      ctl_io_hdr, links);
			FUNC13(&be_lun->queue_lock);
			beio = (struct ctl_be_block_io *)FUNC1(io)->ptr;
			if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
				FUNC11(&io->scsiio);
				FUNC7(beio);
				return;
			}
			be_lun->dispatch(be_lun, beio);
			continue;
		}
		io = (union ctl_io *)FUNC2(&be_lun->config_write_queue);
		if (io != NULL) {
			FUNC0("config write queue\n");
			FUNC3(&be_lun->config_write_queue, &io->io_hdr,
				      ctl_io_hdr, links);
			FUNC13(&be_lun->queue_lock);
			if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
				FUNC11(&io->scsiio);
				FUNC9(io);
				return;
			}
			FUNC5(be_lun, io);
			continue;
		}
		io = (union ctl_io *)FUNC2(&be_lun->config_read_queue);
		if (io != NULL) {
			FUNC0("config read queue\n");
			FUNC3(&be_lun->config_read_queue, &io->io_hdr,
				      ctl_io_hdr, links);
			FUNC13(&be_lun->queue_lock);
			if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
				FUNC11(&io->scsiio);
				FUNC8(io);
				return;
			}
			FUNC4(be_lun, io);
			continue;
		}
		io = (union ctl_io *)FUNC2(&be_lun->input_queue);
		if (io != NULL) {
			FUNC0("input queue\n");
			FUNC3(&be_lun->input_queue, &io->io_hdr,
				      ctl_io_hdr, links);
			FUNC13(&be_lun->queue_lock);
			if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
				FUNC11(&io->scsiio);
				FUNC10(io);
				return;
			}
			FUNC6(be_lun, io);
			continue;
		}

		/*
		 * If we get here, there is no work left in the queues, so
		 * just break out and let the task queue go to sleep.
		 */
		FUNC13(&be_lun->queue_lock);
		break;
	}
}