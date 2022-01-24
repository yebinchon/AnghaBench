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
struct tegra_efuse_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * clk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dev_sc ; 
 struct tegra_efuse_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct tegra_efuse_softc *sc;

	sc = FUNC3(dev);
	dev_sc = NULL;
	if (sc->clk != NULL)
		FUNC2(sc->clk);
	if (sc->reset != NULL)
		FUNC4(sc->reset);
	if (sc->mem_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	return (FUNC0(dev));
}