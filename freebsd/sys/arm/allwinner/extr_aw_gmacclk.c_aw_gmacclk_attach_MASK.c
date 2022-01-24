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
struct clknode_init_def {int id; int parent_cnt; int /*<<< orphan*/ * parent_names; int /*<<< orphan*/  name; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct aw_gmacclk_sc {int tx_delay; int rx_delay; int /*<<< orphan*/  clkdev; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  def ;
typedef  int /*<<< orphan*/  clk_t ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int CLK_IDX_COUNT ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  aw_gmacclk_clknode_class ; 
 scalar_t__ bootverbose ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct clkdom* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct clkdom*) ; 
 scalar_t__ FUNC7 (struct clkdom*) ; 
 struct clknode* FUNC8 (struct clkdom*,int /*<<< orphan*/ *,struct clknode_init_def*) ; 
 struct aw_gmacclk_sc* FUNC9 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC10 (struct clkdom*,struct clknode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct clknode_init_def*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct clknode_init_def def;
	struct aw_gmacclk_sc *sc;
	struct clkdom *clkdom;
	struct clknode *clk;
	clk_t clk_parent;
	bus_addr_t paddr;
	bus_size_t psize;
	phandle_t node;
	int error, ncells, i;

	node = FUNC15(dev);

	if (FUNC17(node, 0, &paddr, &psize, NULL) != 0) {
		FUNC12(dev, "cannot parse 'reg' property\n");
		return (ENXIO);
	}

	error = FUNC16(node, "clocks",
	    "#clock-cells", &ncells);
	if (error != 0 || ncells != CLK_IDX_COUNT) {
		FUNC12(dev, "couldn't find parent clocks\n");
		return (ENXIO);
	}

	clkdom = FUNC5(dev);

	FUNC14(&def, 0, sizeof(def));
	error = FUNC3(dev, node, &def.name);
	if (error != 0) {
		FUNC12(dev, "cannot parse clock name\n");
		error = ENXIO;
		goto fail;
	}
	def.id = 1;
	def.parent_names = FUNC13(sizeof(char *) * ncells, M_OFWPROP, M_WAITOK);
	for (i = 0; i < ncells; i++) {
		error = FUNC1(dev, 0, i, &clk_parent);
		if (error != 0) {
			FUNC12(dev, "cannot get clock %d\n", error);
			goto fail;
		}
		def.parent_names[i] = FUNC2(clk_parent);
		FUNC4(clk_parent);
	}
	def.parent_cnt = ncells;

	clk = FUNC8(clkdom, &aw_gmacclk_clknode_class, &def);
	if (clk == NULL) {
		FUNC12(dev, "cannot create clknode\n");
		error = ENXIO;
		goto fail;
	}

	sc = FUNC9(clk);
	sc->reg = paddr;
	sc->clkdev = FUNC11(dev);
	sc->tx_delay = sc->rx_delay = -1;
	FUNC0(node, "tx-delay", &sc->tx_delay, sizeof(sc->tx_delay));
	FUNC0(node, "rx-delay", &sc->rx_delay, sizeof(sc->rx_delay));

	FUNC10(clkdom, clk);

	if (FUNC7(clkdom) != 0) {
		FUNC12(dev, "cannot finalize clkdom initialization\n");
		error = ENXIO;
		goto fail;
	}

	if (bootverbose)
		FUNC6(clkdom);

	return (0);

fail:
	return (error);
}