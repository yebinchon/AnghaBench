#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  callout; } ;
struct cpsw_softc {TYPE_4__ tx; TYPE_3__ rx; int /*<<< orphan*/  irq_res; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  mem_rid; scalar_t__ mbuf_dtag; scalar_t__ nullpad; int /*<<< orphan*/ * _slots; TYPE_2__ watchdog; TYPE_1__* port; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {scalar_t__ dev; } ;

/* Variables and functions */
 int CPSW_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cpsw_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct cpsw_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_res_spec ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct cpsw_softc *sc;
	int error, i;

	FUNC2(dev);
 	sc = FUNC11(dev);

	for (i = 0; i < CPSW_PORTS; i++) {
		if (sc->port[i].dev)
			FUNC9(dev, sc->port[i].dev);
	}

	if (FUNC12(dev)) {
		FUNC6(&sc->watchdog.callout);
		FUNC5(&sc->watchdog.callout);
	}

	/* Stop and release all interrupts */
	FUNC8(sc);

	/* Free dmamaps and mbufs */
	for (i = 0; i < FUNC15(sc->_slots); ++i)
		FUNC7(sc, &sc->_slots[i]);

	/* Free null padding buffer. */
	if (sc->nullpad)
		FUNC13(sc->nullpad, M_DEVBUF);

	/* Free DMA tag */
	if (sc->mbuf_dtag) {
		error = FUNC1(sc->mbuf_dtag);
		FUNC0(error == 0, ("Unable to destroy DMA tag"));
	}

	/* Free IO memory handler */
	if (sc->mem_res != NULL)
		FUNC3(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem_res);
	FUNC4(dev, irq_res_spec, sc->irq_res);

	/* Destroy mutexes */
	FUNC14(&sc->rx.lock);
	FUNC14(&sc->tx.lock);

	/* Detach the switch device, if present. */
	error = FUNC2(dev);
	if (error != 0)
		return (error);
        
	return (FUNC10(dev));
}