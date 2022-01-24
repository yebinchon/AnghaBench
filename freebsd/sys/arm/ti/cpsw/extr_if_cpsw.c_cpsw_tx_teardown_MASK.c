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
struct TYPE_2__ {int teardown; int /*<<< orphan*/  active_queue_len; scalar_t__ running; int /*<<< orphan*/  active; } ;
struct cpsw_softc {TYPE_1__ tx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_TX_TEARDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpsw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(struct cpsw_softc *sc)
{
	int i = 0;

	FUNC1(sc);
	FUNC0(sc, ("starting TX teardown"));
	/* Start the TX queue teardown if queue is not empty. */
	if (FUNC4(&sc->tx.active) != NULL)
		FUNC6(sc, CPSW_CPDMA_TX_TEARDOWN, 0);
	else
		sc->tx.teardown = 1;
	FUNC5(sc);
	while (sc->tx.running && ++i < 10) {
		FUNC3(200);
		FUNC5(sc);
	}
	if (sc->tx.running) {
		FUNC7(sc->dev,
		    "Unable to cleanly shutdown transmitter\n");
	}
	FUNC0(sc,
	    ("finished TX teardown (%d retries, %d idle buffers)", i,
	     sc->tx.active_queue_len));
	FUNC2(sc);
}