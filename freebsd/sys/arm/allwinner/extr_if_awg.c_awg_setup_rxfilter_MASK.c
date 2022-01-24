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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct awg_softc {int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int DIS_ADDR_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_RX_FRM_FLT ; 
 int /*<<< orphan*/  EMAC_RX_HASH_0 ; 
 int /*<<< orphan*/  EMAC_RX_HASH_1 ; 
 int HASH_MULTICAST ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 int RX_ALL_MULTICAST ; 
 int /*<<< orphan*/  FUNC4 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  awg_hash_maddr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct awg_softc *sc)
{
	uint32_t val, hash[2], machi, maclo;
	uint8_t *eaddr;
	if_t ifp;

	FUNC0(sc);

	ifp = sc->ifp;
	val = 0;
	hash[0] = hash[1] = 0;

	if (FUNC6(ifp) & IFF_PROMISC)
		val |= DIS_ADDR_FILTER;
	else if (FUNC6(ifp) & IFF_ALLMULTI) {
		val |= RX_ALL_MULTICAST;
		hash[0] = hash[1] = ~0;
	} else if (FUNC5(ifp, awg_hash_maddr, hash) > 0)
		val |= HASH_MULTICAST;

	/* Write our unicast address */
	eaddr = FUNC3(ifp);
	machi = (eaddr[5] << 8) | eaddr[4];
	maclo = (eaddr[3] << 24) | (eaddr[2] << 16) | (eaddr[1] << 8) |
	   (eaddr[0] << 0);
	FUNC4(sc, FUNC1(0), machi);
	FUNC4(sc, FUNC2(0), maclo);

	/* Multicast hash filters */
	FUNC4(sc, EMAC_RX_HASH_0, hash[1]);
	FUNC4(sc, EMAC_RX_HASH_1, hash[0]);

	/* RX frame filter config */
	FUNC4(sc, EMAC_RX_FRM_FLT, val);
}