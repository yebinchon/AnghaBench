#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ti_pruss_softc {scalar_t__ sc_pdev; scalar_t__ sc_mem_res; int /*<<< orphan*/  sc_mtx; TYPE_2__* sc_irq_devs; scalar_t__* sc_irq_res; scalar_t__* sc_intr; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  sc_mtx; TYPE_1__ sc_selinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TI_PRUSS_HOST_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct ti_pruss_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ti_pruss_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ti_pruss_softc*,int,int) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct ti_pruss_softc *sc = FUNC3(dev);

	FUNC12(sc);

	for (int i = 0; i < TI_PRUSS_HOST_IRQS; i++) {
		FUNC13( sc, i, false );

		if (sc->sc_intr[i])
			FUNC1(dev, sc->sc_irq_res[i], sc->sc_intr[i]);
		if (sc->sc_irq_res[i])
			FUNC0(dev, SYS_RES_IRQ,
			    FUNC11(sc->sc_irq_res[i]),
			    sc->sc_irq_res[i]);
		FUNC4(&sc->sc_irq_devs[i].sc_selinfo.si_note, 0);
		FUNC8(&sc->sc_irq_devs[i].sc_mtx);
		if (!FUNC6(&sc->sc_irq_devs[i].sc_selinfo.si_note))
			FUNC10("IRQ %d KQueue not empty!\n", i );
		FUNC9(&sc->sc_irq_devs[i].sc_mtx);
		FUNC5(&sc->sc_irq_devs[i].sc_selinfo.si_note);
		FUNC7(&sc->sc_irq_devs[i].sc_mtx);
	}

	FUNC7(&sc->sc_mtx);
	if (sc->sc_mem_res)
		FUNC0(dev, SYS_RES_MEMORY, FUNC11(sc->sc_mem_res),
		    sc->sc_mem_res);
	if (sc->sc_pdev)
		FUNC2(sc->sc_pdev);

	return (0);
}