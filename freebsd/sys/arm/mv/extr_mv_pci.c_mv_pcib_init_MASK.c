#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct mv_pcib_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIM_CMD_BUSMASTEREN ; 
 scalar_t__ PCIM_CMD_MEMEN ; 
 scalar_t__ PCIM_CMD_PORTEN ; 
 scalar_t__ PCIM_HDRTYPE ; 
 scalar_t__ PCIM_MFDEV ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 scalar_t__ PCIS_BRIDGE_PCI ; 
 int PCI_FUNCMAX ; 
 scalar_t__ PCI_MAXHDRTYPE ; 
 int FUNC0 (struct mv_pcib_softc*,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_pcib_softc*,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_pcib_softc*,int) ; 

__attribute__((used)) static int
FUNC5(struct mv_pcib_softc *sc, int bus, int maxslot)
{
	int slot, func, maxfunc, error;
	uint8_t hdrtype, command, class, subclass;

	for (slot = 0; slot <= maxslot; slot++) {
		maxfunc = 0;
		for (func = 0; func <= maxfunc; func++) {
			hdrtype = FUNC2(sc->sc_dev, bus, slot,
			    func, PCIR_HDRTYPE, 1);

			if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
				continue;

			if (func == 0 && (hdrtype & PCIM_MFDEV))
				maxfunc = PCI_FUNCMAX;

			command = FUNC2(sc->sc_dev, bus, slot,
			    func, PCIR_COMMAND, 1);
			command &= ~(PCIM_CMD_MEMEN | PCIM_CMD_PORTEN);
			FUNC3(sc->sc_dev, bus, slot, func,
			    PCIR_COMMAND, command, 1);

			error = FUNC0(sc, bus, slot, func,
			    hdrtype);

			if (error)
				return (error);

			command |= PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN |
			    PCIM_CMD_PORTEN;
			FUNC3(sc->sc_dev, bus, slot, func,
			    PCIR_COMMAND, command, 1);

			/* Handle PCI-PCI bridges */
			class = FUNC2(sc->sc_dev, bus, slot,
			    func, PCIR_CLASS, 1);
			subclass = FUNC2(sc->sc_dev, bus, slot,
			    func, PCIR_SUBCLASS, 1);

			if (class != PCIC_BRIDGE ||
			    subclass != PCIS_BRIDGE_PCI)
				continue;

			FUNC1(sc, bus, slot, func);
		}
	}

	/* Enable all ABCD interrupts */
	FUNC4(sc, (0xF << 24));

	return (0);
}