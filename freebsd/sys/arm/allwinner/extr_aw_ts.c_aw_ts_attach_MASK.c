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
struct aw_ts_softc {int temp_offset; int temp_step; int /*<<< orphan*/  temp_data; int /*<<< orphan*/ * res; int /*<<< orphan*/  intrhand; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
#define  A10_TS 129 
#define  A13_TS 128 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TP_CTRL0 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  TP_CTRL1 ; 
 int TP_CTRL1_MODE_EN ; 
 int /*<<< orphan*/  TP_FIFOC ; 
 int TP_FIFOC_TEMP_IRQ_ENABLE ; 
 int /*<<< orphan*/  TP_TPR ; 
 int TP_TPR_TEMP_EN ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct aw_ts_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  aw_ts_intr ; 
 int /*<<< orphan*/  aw_ts_spec ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aw_ts_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 struct aw_ts_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_handle_int ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct aw_ts_softc *sc;

	sc = FUNC11(dev);
	sc->dev = dev;

	if (FUNC8(dev, aw_ts_spec, sc->res) != 0) {
		FUNC14(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	if (FUNC10(dev, sc->res[1],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, aw_ts_intr, sc,
	    &sc->intrhand)) {
		FUNC9(dev, aw_ts_spec, sc->res);
		FUNC14(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}

	/*
	 * Thoses magic values were taken from linux which take them from
	 * the allwinner SDK or found them by deduction
	 */
	switch (FUNC15(dev, compat_data)->ocd_data) {
	case A10_TS:
		sc->temp_offset = 257000;
		sc->temp_step = 133;
		break;
	case A13_TS:
		sc->temp_offset = 144700;
		sc->temp_step = 100;
		break;
	}

	/* Enable clock and set divisers */
	FUNC7(sc, TP_CTRL0, FUNC3(0) |
	  FUNC2(2) |
	  FUNC4(7) |
	  FUNC5(63));

	/* Enable TS module */
	FUNC7(sc, TP_CTRL1, TP_CTRL1_MODE_EN);

	/* Enable Temperature, period is ~2s */
	FUNC7(sc, TP_TPR, TP_TPR_TEMP_EN | FUNC6(1953));

	/* Enable temp irq */
	FUNC7(sc, TP_FIFOC, TP_FIFOC_TEMP_IRQ_ENABLE);

	/* Add sysctl */
	FUNC0(FUNC12(dev),
	    FUNC1(FUNC13(dev)),
	    OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD,
	    &sc->temp_data, 0, sysctl_handle_int,
	    "IK3", "CPU Temperature");

	return (0);
}