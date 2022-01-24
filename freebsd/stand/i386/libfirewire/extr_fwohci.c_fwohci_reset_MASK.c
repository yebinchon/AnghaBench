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
struct TYPE_2__ {int bus_addr; } ;
struct fwohci_softc {int maxrec; int speed; int* config_rom; TYPE_1__ sid_dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FWOHCI_INTMASKCLR ; 
 int FUNC1 (int) ; 
 int OHCI_BUSFNC ; 
 int /*<<< orphan*/  OHCI_BUS_OPT ; 
 int OHCI_CNTL_SID ; 
 int /*<<< orphan*/  OHCI_CROMHDR ; 
 int /*<<< orphan*/  OHCI_CROMPTR ; 
 int /*<<< orphan*/  OHCI_HCCCTL ; 
 int /*<<< orphan*/  OHCI_HCCCTLCLR ; 
 int OHCI_HCC_BIGEND ; 
 int OHCI_HCC_LINKEN ; 
 int OHCI_HCC_POSTWR ; 
 int OHCI_HCC_RESET ; 
 int /*<<< orphan*/  OHCI_LNKCTL ; 
 int /*<<< orphan*/  OHCI_SID_BUF ; 
 int FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ firewire_debug ; 
 int /*<<< orphan*/  FUNC6 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int* linkspeed ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void
FUNC8(struct fwohci_softc *sc, device_t dev)
{
	int i, max_rec, speed;
	uint32_t reg, reg2;

	/* Disable interrupts */ 
	FUNC3(sc, FWOHCI_INTMASKCLR, ~0);

	/* FLUSH FIFO and reset Transmitter/Receiver */
	FUNC3(sc, OHCI_HCCCTL, OHCI_HCC_RESET);
	if (firewire_debug)
		FUNC5(dev, "resetting OHCI...");
	i = 0;
	while(FUNC2(sc, OHCI_HCCCTL) & OHCI_HCC_RESET) {
		if (i++ > 100) break;
		FUNC0(1000);
	}
	if (firewire_debug)
		FUNC7("done (loop=%d)\n", i);

	/* Probe phy */
	FUNC6(sc, dev);

	/* Probe link */
	reg = FUNC2(sc,  OHCI_BUS_OPT);
	reg2 = reg | OHCI_BUSFNC;
	max_rec = (reg & 0x0000f000) >> 12;
	speed = (reg & 0x00000007);
	FUNC5(dev, "Link %s, max_rec %d bytes.\n",
			linkspeed[speed], FUNC1(max_rec));
	/* XXX fix max_rec */
	sc->maxrec = sc->speed + 8;
	if (max_rec != sc->maxrec) {
		reg2 = (reg2 & 0xffff0fff) | (sc->maxrec << 12);
		FUNC5(dev, "max_rec %d -> %d\n",
				FUNC1(max_rec), FUNC1(sc->maxrec));
	}
	if (firewire_debug)
		FUNC5(dev, "BUS_OPT 0x%x -> 0x%x\n", reg, reg2);
	FUNC3(sc,  OHCI_BUS_OPT, reg2);

	/* Initialize registers */
	FUNC3(sc, OHCI_CROMHDR, sc->config_rom[0]);
	FUNC3(sc, OHCI_CROMPTR, FUNC4(sc->config_rom));
#if 0
	OWRITE(sc, OHCI_SID_BUF, sc->sid_dma.bus_addr);
#endif
	FUNC3(sc, OHCI_HCCCTLCLR, OHCI_HCC_BIGEND);
	FUNC3(sc, OHCI_HCCCTL, OHCI_HCC_POSTWR);
#if 0
	OWRITE(sc, OHCI_LNKCTL, OHCI_CNTL_SID);
#endif

	/* Enable link */
	FUNC3(sc, OHCI_HCCCTL, OHCI_HCC_LINKEN);
}