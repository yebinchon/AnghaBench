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
 void* a31_ccu_clks ; 
 void* a31_ccu_gates ; 
 void* a31_ccu_resets ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct aw_ccung_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct aw_ccung_softc *sc;

	sc = FUNC1(dev);

	sc->resets = a31_ccu_resets;
	sc->nresets = FUNC2(a31_ccu_resets);
	sc->gates = a31_ccu_gates;
	sc->ngates = FUNC2(a31_ccu_gates);
	sc->clks = a31_ccu_clks;
	sc->nclks = FUNC2(a31_ccu_clks);

	return (FUNC0(dev));
}