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
struct ifnet {int if_flags; } ;
struct emac_softc {struct ifnet* emac_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int FUNC1 (struct emac_softc*,int /*<<< orphan*/ ) ; 
 int EMAC_RX_BCO ; 
 int /*<<< orphan*/  EMAC_RX_CTL ; 
 int EMAC_RX_DAF ; 
 int /*<<< orphan*/  EMAC_RX_HASH0 ; 
 int /*<<< orphan*/  EMAC_RX_HASH1 ; 
 int EMAC_RX_MCO ; 
 int EMAC_RX_MHF ; 
 int EMAC_RX_PA ; 
 int EMAC_RX_UCAD ; 
 int /*<<< orphan*/  FUNC2 (struct emac_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  emac_hash_maddr ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC4(struct emac_softc *sc)
{
	struct ifnet *ifp;
	uint32_t hashes[2];
	uint32_t rcr = 0;

	FUNC0(sc);

	ifp = sc->emac_ifp;

	rcr = FUNC1(sc, EMAC_RX_CTL);

	/* Unicast packet and DA filtering */
	rcr |= EMAC_RX_UCAD;
	rcr |= EMAC_RX_DAF;

	hashes[0] = 0;
	hashes[1] = 0;
	if (ifp->if_flags & IFF_ALLMULTI) {
		hashes[0] = 0xffffffff;
		hashes[1] = 0xffffffff;
	} else
		FUNC3(ifp, emac_hash_maddr, hashes);
	rcr |= EMAC_RX_MCO;
	rcr |= EMAC_RX_MHF;
	FUNC2(sc, EMAC_RX_HASH0, hashes[0]);
	FUNC2(sc, EMAC_RX_HASH1, hashes[1]);

	if (ifp->if_flags & IFF_BROADCAST) {
		rcr |= EMAC_RX_BCO;
		rcr |= EMAC_RX_MCO;
	}

	if (ifp->if_flags & IFF_PROMISC)
		rcr |= EMAC_RX_PA;
	else
		rcr |= EMAC_RX_UCAD;

	FUNC2(sc, EMAC_RX_CTL, rcr);
}