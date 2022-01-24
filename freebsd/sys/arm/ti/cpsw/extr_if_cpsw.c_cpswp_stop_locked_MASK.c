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
typedef  int /*<<< orphan*/  uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct cpswp_softc {int /*<<< orphan*/  swsc; int /*<<< orphan*/  unit; int /*<<< orphan*/  mii_callout; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPSW_SL_MACTL_GMII_ENABLE ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct cpswp_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg;

	ifp = sc->ifp;
	FUNC0(sc->swsc, (""));
	FUNC1(sc);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	/* Disable interface */
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	ifp->if_drv_flags |= IFF_DRV_OACTIVE;

	/* Stop ticker */
	FUNC3(&sc->mii_callout);

	/* Tear down the RX/TX queues. */
	if (FUNC5(sc->swsc)) {
		FUNC8(sc->swsc);
		FUNC10(sc->swsc);
	}

	/* Stop MAC RX/TX modules. */
	reg = FUNC6(sc->swsc, FUNC2(sc->unit));
	reg &= ~CPSW_SL_MACTL_GMII_ENABLE;
	FUNC11(sc->swsc, FUNC2(sc->unit), reg);

	if (FUNC5(sc->swsc)) {
		/* Capture stats before we reset controller. */
		FUNC9(sc->swsc);

		FUNC7(sc->swsc);
		FUNC4(sc->swsc);
	}
}