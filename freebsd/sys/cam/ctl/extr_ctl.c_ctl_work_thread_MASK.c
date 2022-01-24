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
struct TYPE_2__ {scalar_t__ io_type; } ;
union ctl_io {int /*<<< orphan*/  scsiio; TYPE_1__ io_hdr; } ;
struct ctl_thread {int /*<<< orphan*/ * thread; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  rtr_queue; int /*<<< orphan*/  incoming_queue; int /*<<< orphan*/  done_queue; int /*<<< orphan*/  isc_queue; struct ctl_softc* ctl_softc; } ;
struct ctl_softc {int /*<<< orphan*/  shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ CTL_IO_TASK ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  PDROP ; 
 scalar_t__ PUSER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (union ctl_io*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ctl_thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(void *arg)
{
	struct ctl_thread *thr = (struct ctl_thread *)arg;
	struct ctl_softc *softc = thr->ctl_softc;
	union ctl_io *io;
	int retval;

	FUNC0(("ctl_work_thread starting\n"));
	FUNC13(curthread);
	FUNC12(curthread, PUSER - 1);
	FUNC14(curthread);

	while (!softc->shutdown) {
		/*
		 * We handle the queues in this order:
		 * - ISC
		 * - done queue (to free up resources, unblock other commands)
		 * - incoming queue
		 * - RtR queue
		 *
		 * If those queues are empty, we break out of the loop and
		 * go to sleep.
		 */
		FUNC9(&thr->queue_lock);
		io = (union ctl_io *)FUNC1(&thr->isc_queue);
		if (io != NULL) {
			FUNC2(&thr->isc_queue, links);
			FUNC11(&thr->queue_lock);
			FUNC3(io);
			continue;
		}
		io = (union ctl_io *)FUNC1(&thr->done_queue);
		if (io != NULL) {
			FUNC2(&thr->done_queue, links);
			/* clear any blocked commands, call fe_done */
			FUNC11(&thr->queue_lock);
			FUNC4(io);
			continue;
		}
		io = (union ctl_io *)FUNC1(&thr->incoming_queue);
		if (io != NULL) {
			FUNC2(&thr->incoming_queue, links);
			FUNC11(&thr->queue_lock);
			if (io->io_hdr.io_type == CTL_IO_TASK)
				FUNC5(io);
			else
				FUNC7(softc, &io->scsiio);
			continue;
		}
		io = (union ctl_io *)FUNC1(&thr->rtr_queue);
		if (io != NULL) {
			FUNC2(&thr->rtr_queue, links);
			FUNC11(&thr->queue_lock);
			retval = FUNC6(&io->scsiio);
			if (retval != CTL_RETVAL_COMPLETE)
				FUNC0(("ctl_scsiio failed\n"));
			continue;
		}

		/* Sleep until we have something to do. */
		FUNC10(thr, &thr->queue_lock, PDROP, "-", 0);
	}
	thr->thread = NULL;
	FUNC8();
}