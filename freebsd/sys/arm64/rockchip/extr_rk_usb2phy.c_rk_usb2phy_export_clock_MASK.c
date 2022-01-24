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
struct rk_usb2phy_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  grf; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
struct rk_usb2phy_regs {TYPE_1__ clk_ctl; } ;
struct rk_usb2phy_clk_sc {struct rk_usb2phy_regs* regs; int /*<<< orphan*/  grf; int /*<<< orphan*/  clkdev; } ;
struct clknode_init_def {char const* name; int parent_cnt; int /*<<< orphan*/ * parent_names; scalar_t__ id; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
typedef  int /*<<< orphan*/  regs ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  def ;
typedef  int /*<<< orphan*/  clk_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ bootverbose ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct clkdom* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clkdom*) ; 
 scalar_t__ FUNC6 (struct clkdom*) ; 
 int /*<<< orphan*/  FUNC7 (struct clkdom*,int /*<<< orphan*/ ) ; 
 struct clknode* FUNC8 (struct clkdom*,int /*<<< orphan*/ *,struct clknode_init_def*) ; 
 struct rk_usb2phy_clk_sc* FUNC9 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC10 (struct clkdom*,struct clknode*) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct clknode_init_def*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,char const***) ; 
 int /*<<< orphan*/  rk_usb2phy_clk_clknode_class ; 
 int /*<<< orphan*/  rk_usb2phy_clk_ofw_map ; 

__attribute__((used)) static int
FUNC19(struct rk_usb2phy_softc *devsc)
{
	struct clknode_init_def def;
	struct rk_usb2phy_clk_sc *sc;
	const char **clknames;
	struct clkdom *clkdom;
	struct clknode *clk;
	clk_t clk_parent;
	phandle_t node;
	phandle_t regs[2];
	int i, nclocks, ncells, error;

	node = FUNC15(devsc->dev);

	error = FUNC16(node, "clocks",
	    "#clock-cells", &ncells);
	if (error != 0 || ncells != 1) {
		FUNC12(devsc->dev, "couldn't find parent clock\n");
		return (ENXIO);
	}

	nclocks = FUNC18(node, "clock-output-names",
	    &clknames);
	if (nclocks != 1)
		return (ENXIO);

	clkdom = FUNC4(devsc->dev);
	FUNC7(clkdom, rk_usb2phy_clk_ofw_map);

	FUNC14(&def, 0, sizeof(def));
	def.id = 0;
	def.name = clknames[0];
	def.parent_names = FUNC13(sizeof(char *) * ncells, M_OFWPROP, M_WAITOK);
	for (i = 0; i < ncells; i++) {
		error = FUNC1(devsc->dev, 0, i, &clk_parent);
		if (error != 0) {
			FUNC12(devsc->dev, "cannot get clock %d\n", error);
			return (ENXIO);
		}
		def.parent_names[i] = FUNC2(clk_parent);
		FUNC3(clk_parent);
	}
	def.parent_cnt = ncells;

	clk = FUNC8(clkdom, &rk_usb2phy_clk_clknode_class, &def);
	if (clk == NULL) {
		FUNC12(devsc->dev, "cannot create clknode\n");
		return (ENXIO);
	}

	sc = FUNC9(clk);
	sc->clkdev = FUNC11(devsc->dev);
	sc->grf = devsc->grf;
	sc->regs = (struct rk_usb2phy_regs *)FUNC17(devsc->dev, compat_data)->ocd_data;
	FUNC0(node, "reg", regs, sizeof(regs));
	sc->regs->clk_ctl.offset = regs[0];
	FUNC10(clkdom, clk);

	if (FUNC6(clkdom) != 0) {
		FUNC12(devsc->dev, "cannot finalize clkdom initialization\n");
		return (ENXIO);
	}

	if (bootverbose)
		FUNC5(clkdom);

	return (0);
}