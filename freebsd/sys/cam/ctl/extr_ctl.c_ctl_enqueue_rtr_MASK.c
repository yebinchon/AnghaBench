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
struct TYPE_3__ {size_t targ_mapped_lun; } ;
struct TYPE_4__ {TYPE_1__ nexus; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
struct ctl_thread {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  rtr_queue; } ;
struct ctl_softc {struct ctl_thread* threads; } ;

/* Variables and functions */
 struct ctl_softc* FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_thread*) ; 
 size_t worker_threads ; 

__attribute__((used)) static void
FUNC5(union ctl_io *io)
{
	struct ctl_softc *softc = FUNC0(io);
	struct ctl_thread *thr;

	thr = &softc->threads[io->io_hdr.nexus.targ_mapped_lun % worker_threads];
	FUNC2(&thr->queue_lock);
	FUNC1(&thr->rtr_queue, &io->io_hdr, links);
	FUNC3(&thr->queue_lock);
	FUNC4(thr);
}