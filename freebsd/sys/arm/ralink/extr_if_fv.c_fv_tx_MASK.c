#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct fv_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_4__ {int fv_tx_cons; int fv_tx_prod; int /*<<< orphan*/  fv_tx_ring_map; int /*<<< orphan*/  fv_tx_ring_tag; int /*<<< orphan*/  fv_tx_tag; struct fv_txdesc* fv_txdesc; int /*<<< orphan*/  fv_tx_cnt; } ;
struct TYPE_3__ {struct fv_desc* fv_tx_ring; } ;
struct fv_softc {TYPE_2__ fv_cdata; TYPE_1__ fv_rdata; struct ifnet* fv_ifp; } ;
struct fv_desc {int fv_stat; int fv_devcs; scalar_t__ fv_addr; } ;

/* Variables and functions */
 int ADSTAT_Tx_ES ; 
 int ADSTAT_Tx_UF ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREWRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fv_softc*) ; 
 int /*<<< orphan*/  FV_TX_RING_CNT ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct fv_softc *sc)
{
	struct fv_txdesc	*txd;
	struct fv_desc		*cur_tx;
	struct ifnet		*ifp;
	uint32_t		ctl, devcs;
	int			cons, prod, prev_cons;

	FUNC2(sc);

	cons = sc->fv_cdata.fv_tx_cons;
	prod = sc->fv_cdata.fv_tx_prod;
	if (cons == prod)
		return;

	FUNC3(sc->fv_cdata.fv_tx_ring_tag,
	    sc->fv_cdata.fv_tx_ring_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	ifp = sc->fv_ifp;
	/*
	 * Go through our tx list and free mbufs for those
	 * frames that have been transmitted.
	 */
	prev_cons = cons;
	for (; cons != prod; FUNC1(cons, FV_TX_RING_CNT)) {
		cur_tx = &sc->fv_rdata.fv_tx_ring[cons];
		ctl = cur_tx->fv_stat;
		devcs = cur_tx->fv_devcs;
		/* Check if descriptor has "finished" flag */
		if (FUNC0(devcs) == 0)
			break;

		sc->fv_cdata.fv_tx_cnt--;
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		txd = &sc->fv_cdata.fv_txdesc[cons];

		if ((ctl & ADSTAT_Tx_ES) == 0)
			FUNC5(ifp, IFCOUNTER_OPACKETS, 1);
		else if (ctl & ADSTAT_Tx_UF) {   /* only underflow not check collision */
			FUNC5(ifp, IFCOUNTER_OERRORS, 1);
		}

		FUNC3(sc->fv_cdata.fv_tx_tag, txd->tx_dmamap,
		    BUS_DMASYNC_POSTWRITE);
		FUNC4(sc->fv_cdata.fv_tx_tag, txd->tx_dmamap);

		/* Free only if it's first descriptor in list */
		if (txd->tx_m)
			FUNC6(txd->tx_m);
		txd->tx_m = NULL;

		/* reset descriptor */
		cur_tx->fv_stat = 0;
		cur_tx->fv_devcs = 0;
		cur_tx->fv_addr = 0;
	}

	sc->fv_cdata.fv_tx_cons = cons;

	FUNC3(sc->fv_cdata.fv_tx_ring_tag,
	    sc->fv_cdata.fv_tx_ring_map, BUS_DMASYNC_PREWRITE);
}