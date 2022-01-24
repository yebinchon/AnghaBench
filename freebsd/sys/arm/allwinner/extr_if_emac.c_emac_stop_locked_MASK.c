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
typedef  int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct emac_softc {int /*<<< orphan*/  emac_tick_ch; scalar_t__ emac_link; struct ifnet* emac_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int /*<<< orphan*/  EMAC_CTL ; 
 int EMAC_CTL_RST ; 
 int EMAC_CTL_RX_EN ; 
 int EMAC_CTL_TX_EN ; 
 int /*<<< orphan*/  EMAC_INT_CTL ; 
 int /*<<< orphan*/  EMAC_INT_STA ; 
 int FUNC1 (struct emac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct emac_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg_val;

	FUNC0(sc);

	ifp = sc->emac_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->emac_link = 0;

	/* Disable all interrupt and clear interrupt status */
	FUNC2(sc, EMAC_INT_CTL, 0);
	reg_val = FUNC1(sc, EMAC_INT_STA);
	FUNC2(sc, EMAC_INT_STA, reg_val);

	/* Disable RX/TX */
	reg_val = FUNC1(sc, EMAC_CTL);
	reg_val &= ~(EMAC_CTL_RST | EMAC_CTL_TX_EN | EMAC_CTL_RX_EN);
	FUNC2(sc, EMAC_CTL, reg_val);

	FUNC3(&sc->emac_tick_ch);
}