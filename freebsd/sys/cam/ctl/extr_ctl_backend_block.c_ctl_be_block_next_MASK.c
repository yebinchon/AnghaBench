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
struct TYPE_2__ {int flags; int status; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  input_queue; } ;
struct ctl_be_block_io {struct ctl_be_block_lun* lun; union ctl_io* io; } ;

/* Variables and functions */
 int CTL_FLAG_ABORT ; 
 int CTL_STATUS_MASK ; 
 int CTL_STATUS_NONE ; 
 int CTL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ctl_be_block_io *beio)
{
	struct ctl_be_block_lun *be_lun;
	union ctl_io *io;

	io = beio->io;
	be_lun = beio->lun;
	FUNC2(beio);
	if ((io->io_hdr.flags & CTL_FLAG_ABORT) ||
	    ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE &&
	     (io->io_hdr.status & CTL_STATUS_MASK) != CTL_SUCCESS)) {
		FUNC1(io);
		return;
	}

	io->io_hdr.status &= ~CTL_STATUS_MASK;
	io->io_hdr.status |= CTL_STATUS_NONE;

	FUNC3(&be_lun->queue_lock);
	FUNC0(&be_lun->input_queue, &io->io_hdr, links);
	FUNC4(&be_lun->queue_lock);
	FUNC5(be_lun->io_taskqueue, &be_lun->io_task);
}