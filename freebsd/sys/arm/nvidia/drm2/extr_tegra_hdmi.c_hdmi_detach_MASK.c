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
struct hdmi_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * supply_vdd; int /*<<< orphan*/ * supply_pll; int /*<<< orphan*/ * supply_hdmi; int /*<<< orphan*/ * hwreset_hdmi; int /*<<< orphan*/ * clk_hdmi; int /*<<< orphan*/ * clk_parent; int /*<<< orphan*/ * irq_ih; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct hdmi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct hdmi_softc *sc;
	sc = FUNC6(dev);

	FUNC0(FUNC5(sc->dev), sc->dev);

	if (sc->irq_ih != NULL)
		FUNC3(dev, sc->irq_res, sc->irq_ih);
	if (sc->clk_parent != NULL)
		FUNC4(sc->clk_parent);
	if (sc->clk_hdmi != NULL)
		FUNC4(sc->clk_hdmi);
	if (sc->hwreset_hdmi != NULL)
		FUNC7(sc->hwreset_hdmi);
	if (sc->supply_hdmi != NULL)
		FUNC8(sc->supply_hdmi);
	if (sc->supply_pll != NULL)
		FUNC8(sc->supply_pll);
	if (sc->supply_vdd != NULL)
		FUNC8(sc->supply_vdd);
	if (sc->irq_res != NULL)
		FUNC2(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	return (FUNC1(dev));
}