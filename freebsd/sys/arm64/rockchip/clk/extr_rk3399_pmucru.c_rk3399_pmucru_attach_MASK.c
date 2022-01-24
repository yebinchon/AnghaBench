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
struct rk_cru_softc {int reset_offset; int reset_num; void* nclks; void* clks; void* ngates; void* gates; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct rk_cru_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 void* rk3399_pmu_clks ; 
 void* rk3399_pmu_gates ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct rk_cru_softc *sc;

	sc = FUNC0(dev);
	sc->dev = dev;

	sc->gates = rk3399_pmu_gates;
	sc->ngates = FUNC1(rk3399_pmu_gates);

	sc->clks = rk3399_pmu_clks;
	sc->nclks = FUNC1(rk3399_pmu_clks);

	sc->reset_offset = 0x110;
	sc->reset_num = 30;

	return (FUNC2(dev));
}