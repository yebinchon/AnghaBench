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
struct TYPE_2__ {struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_nextpkt; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct cpsw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_CPDMA_EOI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 struct mbuf* FUNC2 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct cpsw_softc *sc;
	struct ifnet *ifp;
	struct mbuf *received, *next;

	sc = (struct cpsw_softc *)arg;
	FUNC0(sc);
	received = FUNC2(sc);
	FUNC3(sc);
	FUNC4(sc, CPSW_CPDMA_CPDMA_EOI_VECTOR, 0);
	FUNC1(sc);

	while (received != NULL) {
		next = received->m_nextpkt;
		received->m_nextpkt = NULL;
		ifp = received->m_pkthdr.rcvif;
		(*ifp->if_input)(ifp, received);
		FUNC5(ifp, IFCOUNTER_IPACKETS, 1);
		received = next;
	}
}