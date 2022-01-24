#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct emac_softc {int /*<<< orphan*/  emac_mtx; TYPE_1__* emac_ifp; int /*<<< orphan*/ * emac_irq; int /*<<< orphan*/ * emac_res; int /*<<< orphan*/ * emac_clk; int /*<<< orphan*/  emac_dev; int /*<<< orphan*/ * emac_miibus; int /*<<< orphan*/ * emac_intrhand; int /*<<< orphan*/  emac_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct emac_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct emac_softc *sc;

	sc = FUNC8(dev);
	sc->emac_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	if (FUNC9(dev)) {
		FUNC11(sc->emac_ifp);
		FUNC0(sc);
		FUNC10(sc);
		FUNC1(sc);
		FUNC5(&sc->emac_tick_ch);
	}

	if (sc->emac_intrhand != NULL)
		FUNC4(sc->emac_dev, sc->emac_irq,
		    sc->emac_intrhand);

	if (sc->emac_miibus != NULL) {
		FUNC7(sc->emac_dev, sc->emac_miibus);
		FUNC2(sc->emac_dev);
	}

	if (sc->emac_clk != NULL)
		FUNC6(sc->emac_clk);

	if (sc->emac_res != NULL)
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->emac_res);

	if (sc->emac_irq != NULL)
		FUNC3(dev, SYS_RES_IRQ, 0, sc->emac_irq);

	if (sc->emac_ifp != NULL)
		FUNC12(sc->emac_ifp);

	if (FUNC14(&sc->emac_mtx))
		FUNC13(&sc->emac_mtx);

	return (0);
}