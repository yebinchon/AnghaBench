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
struct fv_txdesc {int /*<<< orphan*/ * tx_m; } ;
struct TYPE_3__ {int /*<<< orphan*/  fv_tx_ring_map; int /*<<< orphan*/  fv_tx_ring_tag; struct fv_txdesc* fv_txdesc; scalar_t__ fv_tx_pkts; scalar_t__ fv_tx_cnt; scalar_t__ fv_tx_cons; scalar_t__ fv_tx_prod; } ;
struct fv_ring_data {TYPE_2__* fv_tx_ring; } ;
struct fv_softc {TYPE_1__ fv_cdata; struct fv_ring_data fv_rdata; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  fv_link; scalar_t__ fv_addr; scalar_t__ fv_devcs; scalar_t__ fv_stat; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct fv_softc*,int) ; 
 int FV_TX_RING_CNT ; 
 int /*<<< orphan*/  FV_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct fv_softc *sc)
{
	struct fv_ring_data	*rd;
	struct fv_txdesc	*txd;
	bus_addr_t		addr;
	int			i;

	sc->fv_cdata.fv_tx_prod = 0;
	sc->fv_cdata.fv_tx_cons = 0;
	sc->fv_cdata.fv_tx_cnt = 0;
	sc->fv_cdata.fv_tx_pkts = 0;

	rd = &sc->fv_rdata;
	FUNC2(rd->fv_tx_ring, FV_TX_RING_SIZE);
	for (i = 0; i < FV_TX_RING_CNT; i++) {
		if (i == FV_TX_RING_CNT - 1)
			addr = FUNC0(sc, 0);
		else
			addr = FUNC0(sc, i + 1);
		rd->fv_tx_ring[i].fv_stat = 0;
		rd->fv_tx_ring[i].fv_devcs = 0;
		rd->fv_tx_ring[i].fv_addr = 0;
		rd->fv_tx_ring[i].fv_link = addr;
		txd = &sc->fv_cdata.fv_txdesc[i];
		txd->tx_m = NULL;
	}

	FUNC1(sc->fv_cdata.fv_tx_ring_tag,
	    sc->fv_cdata.fv_tx_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);
}