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
typedef  int uint32_t ;
struct versatile_sic_softc {int /*<<< orphan*/  dev; TYPE_1__* isrcs; } ;
struct intr_irqsrc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_3__ {struct intr_irqsrc isrc; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct versatile_sic_softc*) ; 
 int FUNC1 (struct versatile_sic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIC_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct versatile_sic_softc*) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct intr_irqsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct versatile_sic_softc *sc;
	struct intr_irqsrc *isrc;
	uint32_t i, interrupts;

	sc = arg;
	FUNC0(sc);
	interrupts = FUNC1(sc, SIC_STATUS);
	FUNC2(sc);
	for (i = 0; interrupts != 0; i++, interrupts >>= 1) {
		if ((interrupts & 0x1) == 0)
			continue;
		isrc = &sc->isrcs[i].isrc;
		if (FUNC4(isrc, curthread->td_intr_frame) != 0) {
			FUNC5(sc->dev, isrc);
			FUNC6(sc->dev, isrc);
			FUNC3(sc->dev, "Stray irq %u disabled\n", i);
		}
	}

	return (FILTER_HANDLED);
}