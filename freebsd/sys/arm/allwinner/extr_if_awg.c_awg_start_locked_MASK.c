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
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; } ;
struct awg_softc {TYPE_1__ tx; int /*<<< orphan*/  ifp; int /*<<< orphan*/  link; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  EMAC_TX_CTL_1 ; 
 int ENOBUFS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int FUNC1 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int TX_DMA_START ; 
 int /*<<< orphan*/  FUNC2 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct awg_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mbuf*) ; 
 struct mbuf* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct awg_softc *sc)
{
	struct mbuf *m;
	uint32_t val;
	if_t ifp;
	int cnt, err;

	FUNC0(sc);

	if (!sc->link)
		return;

	ifp = sc->ifp;

	if ((FUNC7(ifp) & (IFF_DRV_RUNNING|IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	for (cnt = 0; ; cnt++) {
		m = FUNC6(ifp);
		if (m == NULL)
			break;

		err = FUNC3(sc, &m);
		if (err != 0) {
			if (err == ENOBUFS)
				FUNC9(ifp, IFF_DRV_OACTIVE, 0);
			if (m != NULL)
				FUNC8(ifp, m);
			break;
		}
		FUNC5(ifp, m);
	}

	if (cnt != 0) {
		FUNC4(sc->tx.desc_tag, sc->tx.desc_map,
		    BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);

		/* Start and run TX DMA */
		val = FUNC1(sc, EMAC_TX_CTL_1);
		FUNC2(sc, EMAC_TX_CTL_1, val | TX_DMA_START);
	}
}