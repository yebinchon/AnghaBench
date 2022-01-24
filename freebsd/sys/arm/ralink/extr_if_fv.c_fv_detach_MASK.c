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
struct ifnet {int dummy; } ;
struct fv_softc {int fv_detach; int /*<<< orphan*/  fv_mtx; scalar_t__ fv_res; int /*<<< orphan*/  fv_rid; scalar_t__ fv_irq; scalar_t__ fv_intrhand; scalar_t__ fv_miibus; int /*<<< orphan*/  fv_link_task; struct ifnet* fv_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct fv_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct fv_softc		*sc = FUNC7(dev);
	struct ifnet		*ifp = sc->fv_ifp;

	FUNC2(FUNC14(&sc->fv_mtx), ("vr mutex not initialized"));

	/* These should only be active if attach succeeded */
	if (FUNC8(dev)) {
		FUNC0(sc);
		sc->fv_detach = 1;
		FUNC11(sc);
		FUNC1(sc);
		FUNC15(taskqueue_swi, &sc->fv_link_task);
		FUNC9(ifp);
	}
#ifdef MII
	if (sc->fv_miibus)
		device_delete_child(dev, sc->fv_miibus);
#endif
	FUNC3(dev);

	if (sc->fv_intrhand)
		FUNC5(dev, sc->fv_irq, sc->fv_intrhand);
	if (sc->fv_irq)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->fv_irq);

	if (sc->fv_res)
		FUNC4(dev, SYS_RES_MEMORY, sc->fv_rid, 
		    sc->fv_res);

	if (ifp)
		FUNC12(ifp);

	FUNC10(sc);

	FUNC13(&sc->fv_mtx);

	return (0);

}