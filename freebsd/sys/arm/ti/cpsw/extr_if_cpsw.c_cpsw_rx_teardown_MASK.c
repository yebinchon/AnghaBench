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
struct TYPE_2__ {int teardown; scalar_t__ running; } ;
struct cpsw_softc {TYPE_1__ rx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_RX_TEARDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct cpsw_softc *sc)
{
	int i = 0;

	FUNC1(sc);
	FUNC0(sc, ("starting RX teardown"));
	sc->rx.teardown = 1;
	FUNC4(sc, CPSW_CPDMA_RX_TEARDOWN, 0);
	FUNC2(sc);
	while (sc->rx.running) {
		if (++i > 10) {
			FUNC5(sc->dev,
			    "Unable to cleanly shutdown receiver\n");
			return;
		}
		FUNC3(200);
	}
	if (!sc->rx.running)
		FUNC0(sc, ("finished RX teardown (%d retries)", i));
}