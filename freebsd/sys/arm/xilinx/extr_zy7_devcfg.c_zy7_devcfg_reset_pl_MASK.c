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
typedef  int uint32_t ;
struct zy7_devcfg_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_devcfg_softc*) ; 
 int EIO ; 
 int /*<<< orphan*/  PCATCH ; 
 int FUNC2 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZY7_DEVCFG_CTRL ; 
 int ZY7_DEVCFG_CTRL_PCFG_PROG_B ; 
 int ZY7_DEVCFG_INT_ALL ; 
 int /*<<< orphan*/  ZY7_DEVCFG_INT_MASK ; 
 int ZY7_DEVCFG_INT_PCFG_INIT_PE ; 
 int /*<<< orphan*/  ZY7_DEVCFG_INT_STATUS ; 
 int /*<<< orphan*/  ZY7_DEVCFG_STATUS ; 
 int ZY7_DEVCFG_STATUS_PCFG_INIT ; 
 int /*<<< orphan*/  hz ; 
 int FUNC4 (struct zy7_devcfg_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct zy7_devcfg_softc *sc)
{
	uint32_t devcfg_ctl;
	int tries, err;

	FUNC1(sc);

	devcfg_ctl = FUNC2(sc, ZY7_DEVCFG_CTRL);

	/* Clear sticky bits and set up INIT signal positive edge interrupt. */
	FUNC3(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
	FUNC3(sc, ZY7_DEVCFG_INT_MASK, ~ZY7_DEVCFG_INT_PCFG_INIT_PE);

	/* Deassert PROG_B (active low). */
	devcfg_ctl |= ZY7_DEVCFG_CTRL_PCFG_PROG_B;
	FUNC3(sc, ZY7_DEVCFG_CTRL, devcfg_ctl);

	/*
	 * Wait for INIT to assert.  If it is already asserted, we may not get
	 * an edge interrupt so cancel it and continue.
	 */
	if ((FUNC2(sc, ZY7_DEVCFG_STATUS) &
	     ZY7_DEVCFG_STATUS_PCFG_INIT) != 0) {
		/* Already asserted.  Cancel interrupt. */
		FUNC3(sc, ZY7_DEVCFG_INT_MASK, ~0);
	}
	else {
		/* Wait for positive edge interrupt. */
		err = FUNC4(sc, &sc->sc_mtx, PCATCH, "zy7i1", hz);
		if (err != 0)
			return (err);
	}
	
	/* Reassert PROG_B (active low). */
	devcfg_ctl &= ~ZY7_DEVCFG_CTRL_PCFG_PROG_B;
	FUNC3(sc, ZY7_DEVCFG_CTRL, devcfg_ctl);

	/* Wait for INIT deasserted.  This happens almost instantly. */
	tries = 0;
	while ((FUNC2(sc, ZY7_DEVCFG_STATUS) &
		ZY7_DEVCFG_STATUS_PCFG_INIT) != 0) {
		if (++tries >= 100)
			return (EIO);
		FUNC0(5);
	}

	/* Clear sticky bits and set up INIT positive edge interrupt. */
	FUNC3(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
	FUNC3(sc, ZY7_DEVCFG_INT_MASK, ~ZY7_DEVCFG_INT_PCFG_INIT_PE);

	/* Deassert PROG_B again. */
	devcfg_ctl |= ZY7_DEVCFG_CTRL_PCFG_PROG_B;
	FUNC3(sc, ZY7_DEVCFG_CTRL, devcfg_ctl);

	/*
	 * Wait for INIT asserted indicating FPGA internal initialization
	 * is complete.
	 */
	err = FUNC4(sc, &sc->sc_mtx, PCATCH, "zy7i2", hz);
	if (err != 0)
		return (err);

	/* Clear sticky DONE bit in interrupt status. */
	FUNC3(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);

	return (0);
}