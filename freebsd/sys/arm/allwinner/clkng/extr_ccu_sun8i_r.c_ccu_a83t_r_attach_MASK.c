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
struct aw_ccung_softc {void* nclks; void* clks; void* ngates; void* gates; void* nresets; void* resets; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 void* a83t_clks ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* ccu_sun8i_r_gates ; 
 void* ccu_sun8i_r_resets ; 
 struct aw_ccung_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct aw_ccung_softc *sc;

	sc = FUNC1(dev);

	sc->resets = ccu_sun8i_r_resets;
	sc->nresets = FUNC2(ccu_sun8i_r_resets);
	sc->gates = ccu_sun8i_r_gates;
	sc->ngates = FUNC2(ccu_sun8i_r_gates);
	sc->clks = a83t_clks;
	sc->nclks = FUNC2(a83t_clks);

	return (FUNC0(dev));
}