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
struct ti_wdt_softc {scalar_t__ sc_mem_res; scalar_t__ sc_irq_res; scalar_t__ sc_intr; scalar_t__ sc_ev_tag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ti_wdt_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ti_wdt_softc *sc;

	sc = FUNC3(dev);
	if (sc->sc_ev_tag)
		FUNC0(watchdog_list, sc->sc_ev_tag);
	if (sc->sc_intr)
		FUNC2(dev, sc->sc_irq_res, sc->sc_intr);
	if (sc->sc_irq_res)
		FUNC1(dev, SYS_RES_IRQ,
		    FUNC4(sc->sc_irq_res), sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC1(dev, SYS_RES_MEMORY,
		    FUNC4(sc->sc_mem_res),  sc->sc_mem_res);

	return (0);
}