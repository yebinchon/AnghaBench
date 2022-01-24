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
struct host1x_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * syncpt_irq_res; int /*<<< orphan*/ * gen_irq_res; int /*<<< orphan*/ * syncpt_irq_h; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * tegra_drm; int /*<<< orphan*/ * gen_irq_h; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (struct host1x_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct host1x_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct host1x_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct host1x_softc *sc;

	sc = FUNC5(dev);

	FUNC7(sc);

	if (sc->gen_irq_h != NULL)
		FUNC3(dev, sc->gen_irq_res, sc->gen_irq_h);
	if (sc->tegra_drm != NULL)
		FUNC6(sc->tegra_drm, DRM_MEM_DRIVER);
	if (sc->clk != NULL)
		FUNC4(sc->clk);
	if (sc->reset != NULL)
		FUNC8(sc->reset);
	if (sc->syncpt_irq_h != NULL)
		FUNC3(dev, sc->syncpt_irq_res, sc->syncpt_irq_h);
	if (sc->gen_irq_res != NULL)
		FUNC2(dev, SYS_RES_IRQ, 1, sc->gen_irq_res);
	if (sc->syncpt_irq_res != NULL)
		FUNC2(dev, SYS_RES_IRQ, 0, sc->syncpt_irq_res);
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);
	return (FUNC1(dev));
}