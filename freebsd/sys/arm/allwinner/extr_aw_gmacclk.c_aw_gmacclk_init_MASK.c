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
struct clknode {int dummy; } ;
struct aw_gmacclk_sc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CLK_IDX_MII ; 
 int CLK_IDX_RGMII ; 
 int /*<<< orphan*/  FUNC0 (struct aw_gmacclk_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_gmacclk_sc*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (struct aw_gmacclk_sc*,int*) ; 
 int GMAC_CLK_SRC ; 
#define  GMAC_CLK_SRC_MII 129 
#define  GMAC_CLK_SRC_RGMII 128 
 int GMAC_CLK_SRC_SHIFT ; 
 struct aw_gmacclk_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, device_t dev)
{
	struct aw_gmacclk_sc *sc;
	uint32_t val, index;

	sc = FUNC3(clk);

	FUNC0(sc);
	FUNC2(sc, &val);
	FUNC1(sc);

	switch ((val & GMAC_CLK_SRC) >> GMAC_CLK_SRC_SHIFT) {
	case GMAC_CLK_SRC_MII:
		index = CLK_IDX_MII;
		break;
	case GMAC_CLK_SRC_RGMII:
		index = CLK_IDX_RGMII;
		break;
	default:
		return (ENXIO);
	}

	FUNC4(clk, index);
	return (0);
}