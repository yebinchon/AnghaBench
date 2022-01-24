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
struct rk_gpio_softc {int /*<<< orphan*/  clk; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_res; scalar_t__ sc_busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rk_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rk_gpio_spec ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct rk_gpio_softc *sc;

	sc = FUNC2(dev);

	if (sc->sc_busdev)
		FUNC3(dev);
	FUNC0(dev, rk_gpio_spec, sc->sc_res);
	FUNC4(&sc->sc_mtx);
	FUNC1(sc->clk);

	return(0);
}