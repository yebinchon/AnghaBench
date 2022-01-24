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
typedef  int uint16_t ;
struct ti_i2c_softc {scalar_t__ clk_id; int sc_rev; int sc_fifo_trsh; int sc_timeout; int /*<<< orphan*/ * sc_iicbus; int /*<<< orphan*/  sc_irq_h; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int ENXIO ; 
 int I2C_BUFSTAT_FIFODEPTH_MASK ; 
 int I2C_BUFSTAT_FIFODEPTH_SHIFT ; 
 int /*<<< orphan*/  I2C_REG_BUFSTAT ; 
 int /*<<< orphan*/  I2C_REG_REVNB_HI ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 scalar_t__ INVALID_CLK_IDENT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct ti_i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct ti_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_i2c_softc*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ bus_generic_attach ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_i2c_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 struct ti_i2c_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_i2c_intr ; 
 int FUNC17 (struct ti_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_i2c_sysctl_clk ; 
 int /*<<< orphan*/  ti_i2c_sysctl_timeout ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	int err, rid;
	phandle_t node;
	struct ti_i2c_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *tree;
	uint16_t fifosz;

 	sc = FUNC9(dev);
	sc->sc_dev = dev;

	/* Get the i2c device id from FDT. */
	node = FUNC13(dev);
	/* i2c ti,hwmods bindings is special: it start with index 1 */
	sc->clk_id = FUNC14(dev);
	if (sc->clk_id == INVALID_CLK_IDENT) {
		FUNC12(dev, "failed to get device id using ti,hwmod\n");
		return (ENXIO);
	}

	/* Get the memory resource for the register mapping. */
	rid = 0;
	sc->sc_mem_res = FUNC4(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC12(dev, "Cannot map registers.\n");
		return (ENXIO);
	}

	/* Allocate our IRQ resource. */
	rid = 0;
	sc->sc_irq_res = FUNC4(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_irq_res == NULL) {
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC12(dev, "Cannot allocate interrupt.\n");
		return (ENXIO);
	}

	FUNC3(sc);

	/* First of all, we _must_ activate the H/W. */
	err = FUNC15(dev);
	if (err) {
		FUNC12(dev, "ti_i2c_activate failed\n");
		goto out;
	}

	/* Read the version number of the I2C module */
	sc->sc_rev = FUNC17(sc, I2C_REG_REVNB_HI) & 0xff;

	/* Get the fifo size. */
	fifosz = FUNC17(sc, I2C_REG_BUFSTAT);
	fifosz >>= I2C_BUFSTAT_FIFODEPTH_SHIFT;
	fifosz &= I2C_BUFSTAT_FIFODEPTH_MASK;

	FUNC12(dev, "I2C revision %d.%d FIFO size: %d bytes\n",
	    sc->sc_rev >> 4, sc->sc_rev & 0xf, 8 << fifosz);

	/* Set the FIFO threshold to 5 for now. */
	sc->sc_fifo_trsh = 5;

	/* Set I2C bus timeout */
	sc->sc_timeout = 5*hz;

	ctx = FUNC10(dev);
	tree = FUNC1(FUNC11(dev));
	FUNC0(ctx, tree, OID_AUTO, "i2c_clock",
	    CTLFLAG_RD | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ti_i2c_sysctl_clk, "IU", "I2C bus clock");

	FUNC0(ctx, tree, OID_AUTO, "i2c_timeout",
	    CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
	    ti_i2c_sysctl_timeout, "IU", "I2C bus timeout (in ticks)");

	/* Activate the interrupt. */
	err = FUNC6(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, ti_i2c_intr, sc, &sc->sc_irq_h);
	if (err)
		goto out;

	/* Attach the iicbus. */
	if ((sc->sc_iicbus = FUNC8(dev, "iicbus", -1)) == NULL) {
		FUNC12(dev, "could not allocate iicbus instance\n");
		err = ENXIO;
		goto out;
	}

	/* Probe and attach the iicbus when interrupts are available. */
	FUNC7((ich_func_t)bus_generic_attach, dev);

out:
	if (err) {
		FUNC16(dev);
		FUNC2(sc);
	}

	return (err);
}