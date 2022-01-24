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
struct ifnet {int /*<<< orphan*/  if_snd; } ;
struct emac_softc {struct ifnet* emac_ifp; int /*<<< orphan*/  emac_rx_process_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_INT_CTL ; 
 int EMAC_INT_EN ; 
 int /*<<< orphan*/  EMAC_INT_STA ; 
 int EMAC_INT_STA_RX ; 
 int EMAC_INT_STA_TX ; 
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int FUNC1 (struct emac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct emac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct emac_softc*,int) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct emac_softc *sc;
	struct ifnet *ifp;
	uint32_t reg_val;

	sc = (struct emac_softc *)arg;
	FUNC0(sc);

	/* Disable all interrupts */
	FUNC3(sc, EMAC_INT_CTL, 0);
	/* Get EMAC interrupt status */
	reg_val = FUNC1(sc, EMAC_INT_STA);
	/* Clear ISR status */
	FUNC3(sc, EMAC_INT_STA, reg_val);

	/* Received incoming packet */
	if (reg_val & EMAC_INT_STA_RX)
		FUNC5(sc, sc->emac_rx_process_limit);

	/* Transmit Interrupt check */
	if (reg_val & EMAC_INT_STA_TX) {
		FUNC7(sc, reg_val);
		ifp = sc->emac_ifp;
		if (!FUNC4(&ifp->if_snd))
			FUNC6(ifp);
	}

	/* Re-enable interrupt mask */
	reg_val = FUNC1(sc, EMAC_INT_CTL);
	reg_val |= EMAC_INT_EN;
	FUNC3(sc, EMAC_INT_CTL, reg_val);
	FUNC2(sc);
}