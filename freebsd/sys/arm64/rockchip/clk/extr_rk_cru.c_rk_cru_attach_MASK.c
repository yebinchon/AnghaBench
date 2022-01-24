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
struct rk_cru_softc {int nclks; int /*<<< orphan*/ * clkdom; scalar_t__ gates; TYPE_2__* clks; int /*<<< orphan*/  mtx; int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  link; int /*<<< orphan*/  fract; int /*<<< orphan*/  fixed; int /*<<< orphan*/  armclk; int /*<<< orphan*/  mux; int /*<<< orphan*/  composite; int /*<<< orphan*/  pll; } ;
struct TYPE_4__ {int type; TYPE_1__ clk; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
#define  RK3328_CLK_PLL 136 
#define  RK3399_CLK_PLL 135 
#define  RK_CLK_ARMCLK 134 
#define  RK_CLK_COMPOSITE 133 
#define  RK_CLK_FIXED 132 
#define  RK_CLK_FRACT 131 
#define  RK_CLK_LINK 130 
#define  RK_CLK_MUX 129 
#define  RK_CLK_UNDEFINED 128 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct rk_cru_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rk_cru_softc*) ; 
 int /*<<< orphan*/  rk_cru_spec ; 

int
FUNC21(device_t dev)
{
	struct rk_cru_softc *sc;
	phandle_t node;
	int	i;

	sc = FUNC8(dev);
	sc->dev = dev;

	node = FUNC12(dev);

	if (FUNC0(dev, rk_cru_spec, &sc->res) != 0) {
		FUNC9(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	FUNC11(&sc->mtx, FUNC7(dev), NULL, MTX_DEF);

	sc->clkdom = FUNC2(dev);
	if (sc->clkdom == NULL)
		FUNC13("Cannot create clkdom\n");

	for (i = 0; i < sc->nclks; i++) {
		switch (sc->clks[i].type) {
		case RK_CLK_UNDEFINED:
			break;
		case RK3328_CLK_PLL:
			FUNC14(sc->clkdom,
			    sc->clks[i].clk.pll);
			break;
		case RK3399_CLK_PLL:
			FUNC15(sc->clkdom,
			    sc->clks[i].clk.pll);
			break;
		case RK_CLK_COMPOSITE:
			FUNC17(sc->clkdom,
			    sc->clks[i].clk.composite);
			break;
		case RK_CLK_MUX:
			FUNC19(sc->clkdom, sc->clks[i].clk.mux);
			break;
		case RK_CLK_ARMCLK:
			FUNC16(sc->clkdom,
			    sc->clks[i].clk.armclk);
			break;
		case RK_CLK_FIXED:
			FUNC5(sc->clkdom,
			    sc->clks[i].clk.fixed);
			break;
		case RK_CLK_FRACT:
			FUNC18(sc->clkdom,
			    sc->clks[i].clk.fract);
			break;
		case RK_CLK_LINK:
			FUNC6(sc->clkdom,
			    sc->clks[i].clk.link);
			break;
		default:
			FUNC9(dev, "Unknown clock type\n");
			return (ENXIO);
		}
	}

	if (sc->gates)
		FUNC20(sc);

	if (FUNC4(sc->clkdom) != 0)
		FUNC13("cannot finalize clkdom initialization\n");

	if (bootverbose)
		FUNC3(sc->clkdom);

	FUNC1(dev, node);

	/* register our self as a reset provider */
	FUNC10(dev);

	return (0);
}