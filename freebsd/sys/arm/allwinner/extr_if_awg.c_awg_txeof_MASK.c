#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct emac_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int next; scalar_t__ queued; struct emac_desc* desc_ring; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; } ;
struct awg_softc {TYPE_1__ tx; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int TX_DESC_CTL ; 
 int TX_HEADER_ERR ; 
 int TX_LAST_DESC ; 
 int FUNC1 (int) ; 
 int TX_PAYLOAD_ERR ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct awg_softc *sc)
{
	struct emac_desc *desc;
	uint32_t status, size;
	if_t ifp;
	int i, prog;

	FUNC0(sc);

	FUNC3(sc->tx.desc_tag, sc->tx.desc_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	ifp = sc->ifp;

	prog = 0;
	for (i = sc->tx.next; sc->tx.queued > 0; i = FUNC1(i)) {
		desc = &sc->tx.desc_ring[i];
		status = FUNC6(desc->status);
		if ((status & TX_DESC_CTL) != 0)
			break;
		size = FUNC6(desc->size);
		if (size & TX_LAST_DESC) {
			if ((status & (TX_HEADER_ERR | TX_PAYLOAD_ERR)) != 0)
				FUNC4(ifp, IFCOUNTER_OERRORS, 1);
			else
				FUNC4(ifp, IFCOUNTER_OPACKETS, 1);
		}
		prog++;
		FUNC2(sc, i);
	}

	if (prog > 0) {
		sc->tx.next = i;
		FUNC5(ifp, 0, IFF_DRV_OACTIVE);
	}
}