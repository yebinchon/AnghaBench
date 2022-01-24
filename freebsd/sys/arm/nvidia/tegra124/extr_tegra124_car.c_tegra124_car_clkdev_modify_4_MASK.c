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
typedef  int /*<<< orphan*/  uint32_t ;
struct tegra124_car_softc {int /*<<< orphan*/  mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra124_car_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, bus_addr_t addr, uint32_t clear_mask,
    uint32_t set_mask)
{
	struct tegra124_car_softc *sc;
	uint32_t reg;

	sc = FUNC2(dev);
	reg = FUNC0(sc->mem_res, addr);
	reg &= ~clear_mask;
	reg |= set_mask;
	FUNC1(sc->mem_res, addr, reg);
	return (0);
}