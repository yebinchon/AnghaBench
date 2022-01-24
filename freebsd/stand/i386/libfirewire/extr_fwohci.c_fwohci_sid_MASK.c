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
struct fwohci_softc {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWOHCI_INTMASK ; 
 int /*<<< orphan*/  FWOHCI_NODEID ; 
 int /*<<< orphan*/  FWOHCI_STATE_NORMAL ; 
 int /*<<< orphan*/  OHCI_AREQHI ; 
 int /*<<< orphan*/  OHCI_ATRETRY ; 
 int OHCI_CNTL_CYCMTR ; 
 int OHCI_CNTL_CYCTIMER ; 
 int OHCI_INT_PHY_BUS_R ; 
 int /*<<< orphan*/  OHCI_LNKCTL ; 
 int /*<<< orphan*/  OHCI_LNKCTLCLR ; 
 int OHCI_NODE_ROOT ; 
 int OHCI_NODE_VALID ; 
 int /*<<< orphan*/  OHCI_PREQHI ; 
 int /*<<< orphan*/  OHCI_PREQLO ; 
 int /*<<< orphan*/  OHCI_PREQUPPER ; 
 int /*<<< orphan*/  OHCI_SID_CNT ; 
 int OHCI_SID_ERR ; 
 int FUNC0 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* fc ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct fwohci_softc *sc)
{
		uint32_t node_id;
		int plen;

		node_id = FUNC0(sc, FWOHCI_NODEID);
		if (!(node_id & OHCI_NODE_VALID)) {
#if 0
			printf("Bus reset failure\n");
#endif
			return;
		}

		/* Enable bus reset interrupt */
		FUNC1(sc, FWOHCI_INTMASK,  OHCI_INT_PHY_BUS_R);
		/* Allow async. request to us */
		FUNC1(sc, OHCI_AREQHI, 1 << 31);
		/* XXX insecure ?? */
		FUNC1(sc, OHCI_PREQHI, 0x7fffffff);
		FUNC1(sc, OHCI_PREQLO, 0xffffffff);
		FUNC1(sc, OHCI_PREQUPPER, 0x10000);
		/* Set ATRetries register */
		FUNC1(sc, OHCI_ATRETRY, 1<<(13+16) | 0xfff);
/*
** Checking whether the node is root or not. If root, turn on 
** cycle master.
*/
		plen = FUNC0(sc, OHCI_SID_CNT);
		FUNC2(fc->dev, "node_id=0x%08x, gen=%d, ",
			node_id, (plen >> 16) & 0xff);
		if (node_id & OHCI_NODE_ROOT) {
			FUNC2(sc->dev, "CYCLEMASTER mode\n");
			FUNC1(sc, OHCI_LNKCTL,
				OHCI_CNTL_CYCMTR | OHCI_CNTL_CYCTIMER);
		} else {
			FUNC2(sc->dev, "non CYCLEMASTER mode\n");
			FUNC1(sc, OHCI_LNKCTLCLR, OHCI_CNTL_CYCMTR);
			FUNC1(sc, OHCI_LNKCTL, OHCI_CNTL_CYCTIMER);
		}
		if (plen & OHCI_SID_ERR) {
			FUNC2(fc->dev, "SID Error\n");
			return;
		}
		FUNC2(sc->dev, "bus reset phase done\n");
		sc->state = FWOHCI_STATE_NORMAL;
}