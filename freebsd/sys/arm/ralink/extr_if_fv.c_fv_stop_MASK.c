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
struct ifnet {int if_drv_flags; } ;
struct fv_softc {int /*<<< orphan*/  fv_stat_callout; struct ifnet* fv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INTEN ; 
 int /*<<< orphan*/  CSR_OPMODE ; 
 int /*<<< orphan*/  CSR_RXLIST ; 
 int /*<<< orphan*/  CSR_TXLIST ; 
 int /*<<< orphan*/  FUNC0 (struct fv_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fv_softc*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct fv_softc *sc)
{
	struct ifnet	    *ifp;

	FUNC1(sc);

	ifp = sc->fv_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	FUNC2(&sc->fv_stat_callout);

	/* Disable interrupts. */
	FUNC0(sc, CSR_INTEN, 0);

	/* Stop the transmit and receive processes. */
	FUNC0(sc, CSR_OPMODE, 0);
	FUNC0(sc, CSR_RXLIST, 0);
	FUNC0(sc, CSR_TXLIST, 0);

}