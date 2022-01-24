#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int uint32_t ;
struct mv_ap806_clock_softc {int /*<<< orphan*/ * syscon; int /*<<< orphan*/  dev; } ;
struct clkdom {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {void* freq; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct mv_ap806_clock_softc*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_1__ ap806_clk_cluster_0 ; 
 TYPE_1__ ap806_clk_cluster_1 ; 
 TYPE_1__ ap806_clk_fixed ; 
 TYPE_1__ ap806_clk_mss ; 
 TYPE_1__ ap806_clk_sdio ; 
 scalar_t__ bootverbose ; 
 struct clkdom* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clkdom*) ; 
 int /*<<< orphan*/  FUNC4 (struct clkdom*) ; 
 int /*<<< orphan*/  FUNC5 (struct clkdom*,TYPE_1__*) ; 
 struct mv_ap806_clock_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct mv_ap806_clock_softc *sc;
	struct clkdom *clkdom;
	uint64_t clock_freq;
	uint32_t reg;

	sc = FUNC6(dev);
	sc->dev = dev;

	if (FUNC1(sc->dev, &sc->syscon) != 0 ||
	    sc->syscon == NULL) {
		FUNC7(dev, "cannot get syscon for device\n");
		return (ENXIO);
	}

	/* 
	 * We might miss some combinations
	 * Those are the only possible ones on the mcbin
	 */
	reg = FUNC0(sc, 0x400);
	switch (reg & 0x1f) {
	case 0x0:
	case 0x1:
		clock_freq = 2000000000;
		break;
	case 0x6:
		clock_freq = 1800000000;
		break;
	case 0xd:
		clock_freq = 1600000000;
		break;
	case 0x14:
		clock_freq = 1333000000;
		break;
	default:
		FUNC7(dev, "Cannot guess clock freq with reg %x\n",
		     reg & 0x1f);
		return (ENXIO);
		break;
	};

	ap806_clk_cluster_0.freq = clock_freq;
	ap806_clk_cluster_1.freq = clock_freq;
	clkdom = FUNC2(dev);

	FUNC5(clkdom, &ap806_clk_cluster_0);
	FUNC5(clkdom, &ap806_clk_cluster_1);
	FUNC5(clkdom, &ap806_clk_fixed);
	FUNC5(clkdom, &ap806_clk_mss);
	FUNC5(clkdom, &ap806_clk_sdio);

	FUNC4(clkdom);

	if (bootverbose)
		FUNC3(clkdom);
	return (0);
}