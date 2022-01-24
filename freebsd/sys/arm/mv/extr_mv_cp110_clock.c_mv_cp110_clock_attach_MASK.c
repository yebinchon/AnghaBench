#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct mv_cp110_clock_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * syscon; int /*<<< orphan*/  dev; } ;
struct clkdom {int dummy; } ;
struct TYPE_11__ {int parent_cnt; char** parent_names; void* name; scalar_t__ id; } ;
struct clk_gate_def {int mask; int on_value; TYPE_1__ clkdef; scalar_t__ off_value; int /*<<< orphan*/  shift; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  def ;
struct TYPE_12__ {char* name; void* parent_names; } ;
struct TYPE_14__ {TYPE_2__ clkdef; } ;
struct TYPE_13__ {char* name; int /*<<< orphan*/  shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP110_CLOCK_GATING_OFFSET ; 
#define  CP110_GATE_EIP150 136 
#define  CP110_GATE_EIP197 135 
#define  CP110_GATE_GOP_DP 134 
#define  CP110_GATE_MAIN 133 
#define  CP110_GATE_MG 132 
#define  CP110_GATE_PCIE_X4 131 
#define  CP110_GATE_PCIE_XOR 130 
#define  CP110_GATE_PPV2 129 
#define  CP110_GATE_SDIO 128 
 scalar_t__ CP110_MAX_CLOCK ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ bootverbose ; 
 void* clk_parents_0 ; 
 void* clk_parents_1 ; 
 struct clkdom* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clkdom*) ; 
 int /*<<< orphan*/  FUNC3 (struct clkdom*) ; 
 int /*<<< orphan*/  FUNC4 (struct clkdom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clkdom*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (struct clkdom*,struct clk_gate_def*) ; 
 void* core_parents_0 ; 
 void* core_parents_1 ; 
 TYPE_5__ cp110_clk_core ; 
 TYPE_5__ cp110_clk_pll_0 ; 
 TYPE_5__ cp110_clk_ppv2_core ; 
 TYPE_5__ cp110_clk_sdio ; 
 TYPE_5__ cp110_clk_x2core ; 
 TYPE_3__* cp110_gates ; 
 int /*<<< orphan*/  cp110_ofw_map ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct mv_cp110_clock_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct clk_gate_def*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mv_cp110_clock_softc *sc;
	struct clkdom *clkdom;
	struct clk_gate_def def;
	char *pll0_name;
	int unit, i;

	sc = FUNC8(dev);
	sc->dev = dev;

	if (FUNC0(sc->dev, &sc->syscon) != 0 ||
	    sc->syscon == NULL) {
		FUNC10(dev, "cannot get syscon for device\n");
		return (ENXIO);
	}

	unit = FUNC9(dev);
	if (unit > 1) {
		FUNC10(dev, "Bogus cp110-system-controller unit %d\n", unit);
		return (ENXIO);
	}

	FUNC12(&sc->mtx, FUNC7(dev), NULL, MTX_DEF);

	clkdom = FUNC1(dev);
	FUNC4(clkdom, cp110_ofw_map);

	pll0_name = FUNC13(dev, "cp110-pll0");
	cp110_clk_pll_0.clkdef.name = pll0_name;
	FUNC5(clkdom, &cp110_clk_pll_0);

	cp110_clk_ppv2_core.clkdef.name = FUNC13(dev, "cp110-ppv2");
	cp110_clk_ppv2_core.clkdef.parent_names = (unit == 0) ? clk_parents_0 : clk_parents_1;
	FUNC5(clkdom, &cp110_clk_ppv2_core);

	cp110_clk_x2core.clkdef.name = FUNC13(dev, "cp110-x2core");
	cp110_clk_x2core.clkdef.parent_names = (unit == 0) ? clk_parents_0 : clk_parents_1;
	FUNC5(clkdom, &cp110_clk_x2core);

	cp110_clk_core.clkdef.name = FUNC13(dev, "cp110-core");
	cp110_clk_core.clkdef.parent_names = (unit == 0) ? core_parents_0 : core_parents_1;
	FUNC5(clkdom, &cp110_clk_core);

	/* NAND missing */

	cp110_clk_sdio.clkdef.name = FUNC13(dev, "cp110-sdio");
	cp110_clk_sdio.clkdef.parent_names = (unit == 0) ? clk_parents_0 : clk_parents_1;
	FUNC5(clkdom, &cp110_clk_sdio);

	for (i = 0; i < FUNC14(cp110_gates); i++) {
		if (cp110_gates[i].name == NULL)
			continue;

		FUNC11(&def, 0, sizeof(def));
		def.clkdef.id = CP110_MAX_CLOCK + i;
		def.clkdef.name = FUNC13(dev, cp110_gates[i].name);
		def.clkdef.parent_cnt = 1;
		def.offset = CP110_CLOCK_GATING_OFFSET;
		def.shift = cp110_gates[i].shift;
		def.mask = 1;
		def.on_value = 1;
		def.off_value = 0;

		switch (i) {
		case CP110_GATE_MG:
		case CP110_GATE_GOP_DP:
		case CP110_GATE_PPV2:
			def.clkdef.parent_names = &cp110_clk_ppv2_core.clkdef.name;
			break;
		case CP110_GATE_SDIO:
			def.clkdef.parent_names = &cp110_clk_sdio.clkdef.name;
			break;
		case CP110_GATE_MAIN:
		case CP110_GATE_PCIE_XOR:
		case CP110_GATE_PCIE_X4:
		case CP110_GATE_EIP150:
		case CP110_GATE_EIP197:
			def.clkdef.parent_names = &cp110_clk_x2core.clkdef.name;
			break;
		default:
			def.clkdef.parent_names = &cp110_clk_core.clkdef.name;
			break;
		}

		FUNC6(clkdom, &def);
	}

	FUNC3(clkdom);

	if (bootverbose)
		FUNC2(clkdom);

	return (0);
}