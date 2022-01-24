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
union ctl_io {int /*<<< orphan*/  io_hdr; } ;
struct ctl_be_ramdisk_lun {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  cont_queue; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (union ctl_io*) ; 
 int CTL_LLF_COMPARE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  ctl_io_hdr ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *context, int pending)
{
	struct ctl_be_ramdisk_lun *be_lun;
	union ctl_io *io;

	be_lun = (struct ctl_be_ramdisk_lun *)context;
	FUNC5(&be_lun->queue_lock);
	for (;;) {
		io = (union ctl_io *)FUNC1(&be_lun->cont_queue);
		if (io != NULL) {
			FUNC2(&be_lun->cont_queue, &io->io_hdr,
				      ctl_io_hdr, links);
			FUNC6(&be_lun->queue_lock);
			if (FUNC0(io)->flags & CTL_LLF_COMPARE)
				FUNC3(io);
			else
				FUNC4(io);
			FUNC5(&be_lun->queue_lock);
			continue;
		}

		/*
		 * If we get here, there is no work left in the queues, so
		 * just break out and let the task queue go to sleep.
		 */
		break;
	}
	FUNC6(&be_lun->queue_lock);
}