#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ctl_thread {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/ * thread; } ;
struct ctl_softc {scalar_t__ is_single; int shutdown; int /*<<< orphan*/  sysctl_ctx; struct ctl_softc* ctl_ports; struct ctl_softc* ctl_port_mask; struct ctl_softc* ctl_lun_mask; struct ctl_softc* ctl_luns; int /*<<< orphan*/  ctl_lock; int /*<<< orphan*/  io_zone; struct ctl_thread* thresh_thread; int /*<<< orphan*/ * lun_thread; struct ctl_thread pending_lun_queue; struct ctl_thread* threads; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct ctl_softc* control_softc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ha_frontend ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ctl_thread*) ; 
 int worker_threads ; 

__attribute__((used)) static int
FUNC9(void)
{
	struct ctl_softc *softc = control_softc;
	int i;

	if (softc->is_single == 0)
		FUNC0(&ha_frontend);

	FUNC2(softc->dev);

	/* Shutdown CTL threads. */
	softc->shutdown = 1;
	for (i = 0; i < worker_threads; i++) {
		struct ctl_thread *thr = &softc->threads[i];
		while (thr->thread != NULL) {
			FUNC8(thr);
			if (thr->thread != NULL)
				FUNC5("CTL thr shutdown", 1);
		}
		FUNC4(&thr->queue_lock);
	}
	while (softc->lun_thread != NULL) {
		FUNC8(&softc->pending_lun_queue);
		if (softc->lun_thread != NULL)
			FUNC5("CTL thr shutdown", 1);
	}
	while (softc->thresh_thread != NULL) {
		FUNC8(softc->thresh_thread);
		if (softc->thresh_thread != NULL)
			FUNC5("CTL thr shutdown", 1);
	}

	FUNC1(softc);
	FUNC7(softc->io_zone);
	FUNC4(&softc->ctl_lock);

	FUNC3(softc->ctl_luns, M_DEVBUF);
	FUNC3(softc->ctl_lun_mask, M_DEVBUF);
	FUNC3(softc->ctl_port_mask, M_DEVBUF);
	FUNC3(softc->ctl_ports, M_DEVBUF);

	FUNC6(&softc->sysctl_ctx);

	FUNC3(softc, M_DEVBUF);
	control_softc = NULL;
	return (0);
}