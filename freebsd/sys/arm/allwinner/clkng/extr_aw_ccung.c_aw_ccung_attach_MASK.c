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
struct aw_ccung_softc {int nclks; scalar_t__ resets; int /*<<< orphan*/ * clkdom; scalar_t__ gates; TYPE_2__* clks; int /*<<< orphan*/  mtx; int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  nmm; int /*<<< orphan*/  np; int /*<<< orphan*/  mipi; int /*<<< orphan*/  frac; int /*<<< orphan*/  prediv_mux; int /*<<< orphan*/  m; int /*<<< orphan*/  nm; int /*<<< orphan*/  nkmp; int /*<<< orphan*/  fixed; int /*<<< orphan*/  div; int /*<<< orphan*/  mux; } ;
struct TYPE_4__ {int type; TYPE_1__ clk; } ;

/* Variables and functions */
#define  AW_CLK_DIV 139 
#define  AW_CLK_FIXED 138 
#define  AW_CLK_FRAC 137 
#define  AW_CLK_M 136 
#define  AW_CLK_MIPI 135 
#define  AW_CLK_MUX 134 
#define  AW_CLK_NKMP 133 
#define  AW_CLK_NM 132 
#define  AW_CLK_NMM 131 
#define  AW_CLK_NP 130 
#define  AW_CLK_PREDIV_MUX 129 
#define  AW_CLK_UNDEFINED 128 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct aw_ccung_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_ccung_softc*) ; 
 int /*<<< orphan*/  aw_ccung_spec ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct aw_ccung_softc* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

int
FUNC25(device_t dev)
{
	struct aw_ccung_softc *sc;
	int i;

	sc = FUNC20(dev);
	sc->dev = dev;

	if (FUNC10(dev, aw_ccung_spec, &sc->res) != 0) {
		FUNC21(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	FUNC23(&sc->mtx, FUNC19(dev), NULL, MTX_DEF);

	sc->clkdom = FUNC11(dev);
	if (sc->clkdom == NULL)
		FUNC24("Cannot create clkdom\n");

	for (i = 0; i < sc->nclks; i++) {
		switch (sc->clks[i].type) {
		case AW_CLK_UNDEFINED:
			break;
		case AW_CLK_MUX:
			FUNC18(sc->clkdom, sc->clks[i].clk.mux);
			break;
		case AW_CLK_DIV:
			FUNC16(sc->clkdom, sc->clks[i].clk.div);
			break;
		case AW_CLK_FIXED:
			FUNC17(sc->clkdom,
			    sc->clks[i].clk.fixed);
			break;
		case AW_CLK_NKMP:
			FUNC5(sc->clkdom, sc->clks[i].clk.nkmp);
			break;
		case AW_CLK_NM:
			FUNC6(sc->clkdom, sc->clks[i].clk.nm);
			break;
		case AW_CLK_M:
			FUNC3(sc->clkdom, sc->clks[i].clk.m);
			break;
		case AW_CLK_PREDIV_MUX:
			FUNC9(sc->clkdom,
			    sc->clks[i].clk.prediv_mux);
			break;
		case AW_CLK_FRAC:
			FUNC2(sc->clkdom, sc->clks[i].clk.frac);
			break;
		case AW_CLK_MIPI:
			FUNC4(sc->clkdom, sc->clks[i].clk.mipi);
			break;
		case AW_CLK_NP:
			FUNC8(sc->clkdom, sc->clks[i].clk.np);
			break;
		case AW_CLK_NMM:
			FUNC7(sc->clkdom, sc->clks[i].clk.nmm);
			break;
		}
	}

	if (sc->gates)
		FUNC1(sc);
	if (FUNC13(sc->clkdom) != 0)
		FUNC24("cannot finalize clkdom initialization\n");

	FUNC15(sc->clkdom);
	FUNC0(sc);
	FUNC14(sc->clkdom);

	if (bootverbose)
		FUNC12(sc->clkdom);

	/* If we have resets, register our self as a reset provider */
	if (sc->resets)
		FUNC22(dev);

	return (0);
}