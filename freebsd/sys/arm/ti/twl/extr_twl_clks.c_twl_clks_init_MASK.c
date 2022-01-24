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
struct twl_clks_softc {int /*<<< orphan*/  sc_init_hook; int /*<<< orphan*/  sc_pdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct twl_clks_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twl4030_clocks ; 
 int /*<<< orphan*/  twl6030_clocks ; 
 int /*<<< orphan*/  FUNC2 (struct twl_clks_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *dev)
{
	struct twl_clks_softc *sc;

	sc = FUNC1((device_t)dev);

	if (FUNC3(sc->sc_pdev))
		FUNC2(sc, twl4030_clocks);
	else if (FUNC5(sc->sc_pdev) || FUNC4(sc->sc_pdev))
		FUNC2(sc, twl6030_clocks);

	FUNC0(&sc->sc_init_hook);
}