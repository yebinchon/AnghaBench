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
struct emac_softc {int /*<<< orphan*/  emac_dev; int /*<<< orphan*/  emac_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct emac_softc *sc)
{
	int error;

	/* Activate EMAC clock. */
	error = FUNC2(sc->emac_dev, 0, 0, &sc->emac_clk);
	if (error != 0) {
		FUNC3(sc->emac_dev, "cannot get clock\n");
		return (error);
	}
	error = FUNC1(sc->emac_clk);
	if (error != 0) {
		FUNC3(sc->emac_dev, "cannot enable clock\n");
		return (error);
	}

	/* Map sram. */
	FUNC0();

	return (0);
}