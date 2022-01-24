#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct ifnet* rcvif; scalar_t__ len; } ;
struct mbuf {TYPE_2__ m_pkthdr; scalar_t__ m_len; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_6__ {int fv_rx_cons; int /*<<< orphan*/  fv_rx_ring_map; int /*<<< orphan*/  fv_rx_ring_tag; int /*<<< orphan*/  fv_rx_tag; struct fv_rxdesc* fv_rxdesc; } ;
struct TYPE_4__ {struct fv_desc* fv_rx_ring; } ;
struct fv_softc {TYPE_3__ fv_cdata; int /*<<< orphan*/  fv_dev; TYPE_1__ fv_rdata; struct ifnet* fv_ifp; } ;
struct fv_rxdesc {int saved_ctl; scalar_t__ saved_ca; struct mbuf* rx_m; int /*<<< orphan*/  rx_dmamap; } ;
struct fv_desc {int fv_stat; scalar_t__ fv_addr; int /*<<< orphan*/  fv_devcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADCTL_ER ; 
 int ADSTAT_ES ; 
 int ADSTAT_OWN ; 
 int ADSTAT_Rx_DE ; 
 int FUNC0 (int) ; 
 int ADSTAT_Rx_TL ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 scalar_t__ ETHER_CRC_LEN ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fv_softc*) ; 
 int FV_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC4 (struct fv_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 scalar_t__ FUNC8 (struct fv_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC11(struct fv_softc *sc)
{
	struct fv_rxdesc	*rxd;
	struct ifnet		*ifp = sc->fv_ifp;
	int			cons, prog, packet_len, error;
	struct fv_desc		*cur_rx;
	struct mbuf		*m;

	FUNC3(sc);

	cons = sc->fv_cdata.fv_rx_cons;

	FUNC5(sc->fv_cdata.fv_rx_ring_tag,
	    sc->fv_cdata.fv_rx_ring_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	for (prog = 0; prog < FV_RX_RING_CNT; FUNC1(cons, FV_RX_RING_CNT)) {
		cur_rx = &sc->fv_rdata.fv_rx_ring[cons];
		rxd = &sc->fv_cdata.fv_rxdesc[cons];
		m = rxd->rx_m;

		if ((cur_rx->fv_stat & ADSTAT_OWN) == ADSTAT_OWN)
		       break;	
		
		prog++;

		if (cur_rx->fv_stat & (ADSTAT_ES | ADSTAT_Rx_TL)) {
			FUNC6(sc->fv_dev, 
			    "Receive Descriptor error %x\n", cur_rx->fv_stat);
			FUNC9(ifp, IFCOUNTER_IERRORS, 1);
			packet_len = 0;
		} else {
			packet_len = FUNC0(cur_rx->fv_stat);
		}
	
		/* Assume it's error */
		error = 1;

		if (packet_len < 64)
			FUNC9(ifp, IFCOUNTER_IERRORS, 1);
		else if ((cur_rx->fv_stat & ADSTAT_Rx_DE) == 0) {
			error = 0;
			FUNC5(sc->fv_cdata.fv_rx_tag, rxd->rx_dmamap,
			    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
			m = rxd->rx_m;
			/* Skip 4 bytes of CRC */
			m->m_pkthdr.len = m->m_len = packet_len - ETHER_CRC_LEN;

			FUNC7(m);
			m->m_pkthdr.rcvif = ifp;
			FUNC9(ifp, IFCOUNTER_IPACKETS, 1);

			FUNC4(sc);
			(*ifp->if_input)(ifp, m);
			FUNC2(sc);
		}

		if (error) {
			/* Restore CONTROL and CA values, reset DEVCS */
			cur_rx->fv_stat = rxd->saved_ctl;
			cur_rx->fv_addr = rxd->saved_ca;
			cur_rx->fv_devcs = 0;
		}
		else {
			/* Reinit descriptor */
			cur_rx->fv_stat = ADSTAT_OWN;
			cur_rx->fv_devcs = 0;
			if (cons == FV_RX_RING_CNT - 1)
				cur_rx->fv_devcs |= ADCTL_ER;
			cur_rx->fv_addr = 0;
			if (FUNC8(sc, cons) != 0) {
				FUNC6(sc->fv_dev, 
				    "Failed to allocate buffer\n");
				break;
			}
		}

		FUNC5(sc->fv_cdata.fv_rx_ring_tag,
		    sc->fv_cdata.fv_rx_ring_map,
		    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	}

	if (prog > 0) {
		sc->fv_cdata.fv_rx_cons = cons;

		FUNC5(sc->fv_cdata.fv_rx_ring_tag,
		    sc->fv_cdata.fv_rx_ring_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}
}