#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct sockaddr_dl {int dummy; } ;
struct cpswp_softc {int vlan; int unit; TYPE_2__* ifp; TYPE_3__* swsc; } ;
struct TYPE_8__ {scalar_t__ dualemac; } ;
struct TYPE_7__ {TYPE_1__* if_addr; } ;
struct TYPE_6__ {scalar_t__ ifa_addr; } ;

/* Variables and functions */
 int ALE_MCAST_FWD ; 
 int ALE_TYPE_ADDR ; 
 int ALE_TYPE_VLAN_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* FUNC2 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpswp_set_maddr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct cpswp_softc*) ; 

__attribute__((used)) static int
FUNC7(struct cpswp_softc *sc, int purge)
{
	uint8_t *mac;
	uint32_t ale_entry[3], ale_type, portmask;

	if (sc->swsc->dualemac) {
		ale_type = ALE_TYPE_VLAN_ADDR << 28 | sc->vlan << 16;
		portmask = 1 << (sc->unit + 1) | 1 << 0;
	} else {
		ale_type = ALE_TYPE_ADDR << 28;
		portmask = 7;
	}

	/*
	 * Route incoming packets for our MAC address to Port 0 (host).
	 * For simplicity, keep this entry at table index 0 for port 1 and
	 * at index 2 for port 2 in the ALE.
	 */
	mac = FUNC2((struct sockaddr_dl *)sc->ifp->if_addr->ifa_addr);
	ale_entry[0] = mac[2] << 24 | mac[3] << 16 | mac[4] << 8 | mac[5];
	ale_entry[1] = ale_type | mac[0] << 8 | mac[1]; /* addr entry + mac */
	ale_entry[2] = 0; /* port = 0 */
	FUNC4(sc->swsc, 0 + 2 * sc->unit, ale_entry);

	/* Set outgoing MAC Address for slave port. */
	FUNC5(sc->swsc, FUNC0(sc->unit + 1),
	    mac[3] << 24 | mac[2] << 16 | mac[1] << 8 | mac[0]);
	FUNC5(sc->swsc, FUNC1(sc->unit + 1),
	    mac[5] << 8 | mac[4]);

	/* Keep the broadcast address at table entry 1 (or 3). */
	ale_entry[0] = 0xffffffff; /* Lower 32 bits of MAC */
	/* ALE_MCAST_FWD, Addr type, upper 16 bits of Mac */ 
	ale_entry[1] = ALE_MCAST_FWD | ale_type | 0xffff;
	ale_entry[2] = portmask << 2;
	FUNC4(sc->swsc, 1 + 2 * sc->unit, ale_entry);

	/* SIOCDELMULTI doesn't specify the particular address
	   being removed, so we have to remove all and rebuild. */
	if (purge)
		FUNC3(sc->swsc);

        /* Set other multicast addrs desired. */
	FUNC6(sc->ifp, cpswp_set_maddr, sc);

	return (0);
}