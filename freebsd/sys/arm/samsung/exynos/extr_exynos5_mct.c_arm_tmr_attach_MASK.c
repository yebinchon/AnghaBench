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
struct arm_tmr_softc {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/ * tmr_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MCT_CTRL ; 
 int MCT_CTRL_START ; 
 int /*<<< orphan*/  MCT_WRITE_STAT ; 
 int /*<<< orphan*/  arm_tmr_spec ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct arm_tmr_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct arm_tmr_softc *sc;
	int reg, i;
	int mask;

	sc = FUNC4(dev);

	if (FUNC0(dev, arm_tmr_spec, sc->tmr_res)) {
		FUNC5(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Timer interface */
	sc->bst = FUNC8(sc->tmr_res[0]);
	sc->bsh = FUNC7(sc->tmr_res[0]);

	reg = FUNC1(sc->bst, sc->bsh, MCT_CTRL);
	reg |= MCT_CTRL_START;
	FUNC2(sc->bst, sc->bsh, MCT_CTRL, reg);

	mask = (1 << 16);

	/* Wait 10 times until written value is applied */
	for (i = 0; i < 10; i++) {
		reg = FUNC1(sc->bst, sc->bsh, MCT_WRITE_STAT);
		if (reg & mask) {
			FUNC2(sc->bst, sc->bsh,
			    MCT_WRITE_STAT, mask);
			return (0);
		}
		FUNC3();
	}

	/* NOTREACHED */

	FUNC6("Can't enable timer\n");
}