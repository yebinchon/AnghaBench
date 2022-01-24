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
typedef  int uint32_t ;
struct aw_ir_softc {int fifo_size; int /*<<< orphan*/ * res; int /*<<< orphan*/ * sc_evdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  intrhand; } ;
typedef  int /*<<< orphan*/ * hwreset_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * clk_t ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
#define  A10_IR 129 
#define  A13_IR 128 
 int AW_IR_ACTIVE_T ; 
 int AW_IR_ACTIVE_T_C ; 
 int /*<<< orphan*/  AW_IR_BASE_CLK ; 
 int /*<<< orphan*/  AW_IR_CIR ; 
 int /*<<< orphan*/  AW_IR_CTL ; 
 int AW_IR_CTL_GEN ; 
 int AW_IR_CTL_MD ; 
 int AW_IR_CTL_RXEN ; 
 int /*<<< orphan*/  AW_IR_RXCTL ; 
 int AW_IR_RXCTL_RPPI ; 
 int AW_IR_RXFILT_VAL ; 
 int AW_IR_RXIDLE_VAL ; 
 int /*<<< orphan*/  AW_IR_RXINT ; 
 int AW_IR_RXINT_RAI_EN ; 
 int FUNC0 (int) ; 
 int AW_IR_RXINT_ROI_EN ; 
 int AW_IR_RXINT_RPEI_EN ; 
 int /*<<< orphan*/  AW_IR_RXSTA ; 
 int AW_IR_RXSTA_CLEARALL ; 
 int AW_IR_SAMPLE_128 ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_SYN ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC1 (struct aw_ir_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aw_ir_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_ir_softc*) ; 
 int /*<<< orphan*/  aw_ir_intr ; 
 int /*<<< orphan*/  aw_ir_spec ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aw_ir_softc*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct aw_ir_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct aw_ir_softc *sc;
	hwreset_t rst_apb;
	clk_t clk_ir, clk_gate;
	int err;
	uint32_t val = 0;

	clk_ir = clk_gate = NULL;
	rst_apb = NULL;

	sc = FUNC13(dev);
	sc->dev = dev;

	if (FUNC4(dev, aw_ir_spec, sc->res) != 0) {
		FUNC14(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	switch (FUNC26(dev, compat_data)->ocd_data) {
	case A10_IR:
		sc->fifo_size = 16;
		break;
	case A13_IR:
		sc->fifo_size = 64;
		break;
	}

	/* De-assert reset */
	if (FUNC24(dev, 0, 0, &rst_apb) == 0) {
		err = FUNC23(rst_apb);
		if (err != 0) {
			FUNC14(dev, "cannot de-assert reset\n");
			goto error;
		}
	}

	/* Reset buffer */
	FUNC3(sc);

	/* Get clocks and enable them */
	err = FUNC8(dev, 0, "apb", &clk_gate);
	if (err != 0) {
		FUNC14(dev, "Cannot get gate clock\n");
		goto error;
	}
	err = FUNC8(dev, 0, "ir", &clk_ir);
	if (err != 0) {
		FUNC14(dev, "Cannot get IR clock\n");
		goto error;
	}
	/* Set clock rate */
	err = FUNC10(clk_ir, AW_IR_BASE_CLK, 0);
	if (err != 0) {
		FUNC14(dev, "cannot set IR clock rate\n");
		goto error;
	}
	/* Enable clocks */
	err = FUNC7(clk_gate);
	if (err != 0) {
		FUNC14(dev, "Cannot enable clk gate\n");
		goto error;
	}
	err = FUNC7(clk_ir);
	if (err != 0) {
		FUNC14(dev, "Cannot enable IR clock\n");
		goto error;
	}

	if (FUNC6(dev, sc->res[1],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, aw_ir_intr, sc,
	    &sc->intrhand)) {
		FUNC5(dev, aw_ir_spec, sc->res);
		FUNC14(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}

	/* Enable CIR Mode */
	FUNC2(sc, AW_IR_CTL, AW_IR_CTL_MD);

	/*
	 * Set clock sample, filter, idle thresholds.
	 * Frequency sample = 3MHz/128 = 23437.5Hz (42.7us)
	 */
	val = AW_IR_SAMPLE_128;
	val |= (AW_IR_RXFILT_VAL | AW_IR_RXIDLE_VAL);
	val |= (AW_IR_ACTIVE_T | AW_IR_ACTIVE_T_C);
	FUNC2(sc, AW_IR_CIR, val);

	/* Invert Input Signal */
	FUNC2(sc, AW_IR_RXCTL, AW_IR_RXCTL_RPPI);

	/* Clear All RX Interrupt Status */
	FUNC2(sc, AW_IR_RXSTA, AW_IR_RXSTA_CLEARALL);

	/*
	 * Enable RX interrupt in case of overflow, packet end
	 * and FIFO available.
	 * RX FIFO Threshold = FIFO size / 2
	 */
	FUNC2(sc, AW_IR_RXINT, AW_IR_RXINT_ROI_EN | AW_IR_RXINT_RPEI_EN |
	    AW_IR_RXINT_RAI_EN | FUNC0((sc->fifo_size >> 1) - 1));

	/* Enable IR Module */
	val = FUNC1(sc, AW_IR_CTL);
	FUNC2(sc, AW_IR_CTL, val | AW_IR_CTL_GEN | AW_IR_CTL_RXEN);

	sc->sc_evdev = FUNC15();
	FUNC19(sc->sc_evdev, FUNC11(sc->dev));
	FUNC20(sc->sc_evdev, FUNC12(sc->dev));
	FUNC18(sc->sc_evdev, BUS_HOST, 0, 0, 0);
	FUNC21(sc->sc_evdev, EV_SYN);
	FUNC21(sc->sc_evdev, EV_MSC);
	FUNC22(sc->sc_evdev, MSC_SCAN);

	err = FUNC17(sc->sc_evdev);
	if (err) {
		FUNC14(dev,
		    "failed to register evdev: error=%d\n", err);
		goto error;
	}

	return (0);
error:
	if (clk_gate != NULL)
		FUNC9(clk_gate);
	if (clk_ir != NULL)
		FUNC9(clk_ir);
	if (rst_apb != NULL)
		FUNC25(rst_apb);
	FUNC16(sc->sc_evdev);
	sc->sc_evdev = NULL;	/* Avoid double free */

	FUNC5(dev, aw_ir_spec, sc->res);
	return (ENXIO);
}