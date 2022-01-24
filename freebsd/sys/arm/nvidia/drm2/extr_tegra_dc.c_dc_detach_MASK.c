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
struct dc_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * hwreset_dc; int /*<<< orphan*/ * clk_dc; int /*<<< orphan*/ * clk_parent; int /*<<< orphan*/ * irq_ih; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct dc_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct dc_softc *sc;

	sc = FUNC7(dev);

	FUNC1(FUNC6(sc->dev), sc->dev);

	if (sc->irq_ih != NULL)
		FUNC4(dev, sc->irq_res, sc->irq_ih);
	if (sc->clk_parent != NULL)
		FUNC5(sc->clk_parent);
	if (sc->clk_dc != NULL)
		FUNC5(sc->clk_dc);
	if (sc->hwreset_dc != NULL)
		FUNC8(sc->hwreset_dc);
	if (sc->irq_res != NULL)
		FUNC3(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);

	return (FUNC2(dev));
}