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
struct TYPE_4__ {int timer; int /*<<< orphan*/  callout; int /*<<< orphan*/  resets; } ;
struct TYPE_3__ {scalar_t__ active_queue_len; scalar_t__ queue_removes; scalar_t__ queue_removes_at_last_tick; int /*<<< orphan*/  running; } ;
struct cpsw_softc {TYPE_2__ watchdog; TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct cpsw_softc*) ; 
 scalar_t__ FUNC3 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC5(void *msc)
{
	struct cpsw_softc *sc;

	sc = msc;
	FUNC0(sc);
	if (sc->tx.active_queue_len == 0 || !sc->tx.running) {
		sc->watchdog.timer = 0; /* Nothing to do. */
	} else if (sc->tx.queue_removes > sc->tx.queue_removes_at_last_tick) {
		sc->watchdog.timer = 0;  /* Stuff done while we weren't looking. */
	} else if (FUNC3(sc) > 0) {
		sc->watchdog.timer = 0;  /* We just did something. */
	} else {
		/* There was something to do but it didn't get done. */
		++sc->watchdog.timer;
		if (sc->watchdog.timer > 5) {
			sc->watchdog.timer = 0;
			++sc->watchdog.resets;
			FUNC4(sc);
		}
	}
	sc->tx.queue_removes_at_last_tick = sc->tx.queue_removes;
	FUNC1(sc);

	/* Schedule another timeout one second from now */
	FUNC2(&sc->watchdog.callout, hz, cpsw_tx_watchdog, sc);
}