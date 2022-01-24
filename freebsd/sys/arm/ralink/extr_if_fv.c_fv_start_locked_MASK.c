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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct fv_softc* if_softc; } ;
struct TYPE_2__ {int fv_tx_cnt; } ;
struct fv_softc {scalar_t__ fv_link_status; TYPE_1__ fv_cdata; } ;

/* Variables and functions */
 int FUNC0 (struct fv_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_STATUS ; 
 int /*<<< orphan*/  CSR_TXPOLL ; 
 int /*<<< orphan*/  FUNC1 (struct fv_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct fv_softc*) ; 
 int FV_TX_RING_CNT ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  TXPOLL_TPD ; 
 scalar_t__ FUNC7 (struct fv_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct fv_softc		*sc;
	struct mbuf		*m_head;
	int			enq;
	int			txstat;

	sc = ifp->if_softc;

	FUNC3(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || sc->fv_link_status == 0 )
		return;

	for (enq = 0; !FUNC5(&ifp->if_snd) &&
	    sc->fv_cdata.fv_tx_cnt < FV_TX_RING_CNT - 2; ) {
		FUNC4(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC7(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC6(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC2(ifp, m_head);
	}

	if (enq > 0) {
		txstat = (FUNC0(sc, CSR_STATUS) >> 20) & 7;
		if (txstat == 0 || txstat == 6)
			FUNC1(sc, CSR_TXPOLL, TXPOLL_TPD);
	}
}