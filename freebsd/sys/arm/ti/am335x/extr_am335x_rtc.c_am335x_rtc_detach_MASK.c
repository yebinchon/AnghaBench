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
struct am335x_rtc_softc {scalar_t__ sc_mem_res; int /*<<< orphan*/ ** sc_irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct am335x_rtc_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  am335x_rtc_irq_spec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct am335x_rtc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct am335x_rtc_softc *sc;

	sc = FUNC3(dev);
	if (sc->sc_irq_res[0] != NULL)
		FUNC2(dev, am335x_rtc_irq_spec, sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
	FUNC0(sc);

	return (0);
}