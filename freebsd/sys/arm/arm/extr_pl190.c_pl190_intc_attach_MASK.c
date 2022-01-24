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
typedef  int uint32_t ;
struct pl190_intc_softc {int /*<<< orphan*/  dev; struct pl190_intc_irqsrc* isrcs; int /*<<< orphan*/ * intc_res; int /*<<< orphan*/  mtx; } ;
struct pl190_intc_irqsrc {int irq; int /*<<< orphan*/  isrc; } ;
struct intr_pic {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct pl190_intc_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pl190_intc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VICINTENCLEAR ; 
 int /*<<< orphan*/  VICINTSELECT ; 
 scalar_t__ VICPERIPHID ; 
 scalar_t__ VICPRIMECELLID ; 
 int VIC_NIRQS ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pl190_intc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pl190_intc_softc*,int /*<<< orphan*/ ) ; 
 struct intr_pic* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl190_intc_intr ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct		pl190_intc_softc *sc;
	uint32_t	id;
	int		i, rid;
	struct		pl190_intc_irqsrc *isrcs;
	struct intr_pic *pic;
	int		error;
	uint32_t	irq;
	const char	*name;
	phandle_t	xref;

	sc = FUNC5(dev);
	sc->dev = dev;
	FUNC10(&sc->mtx, FUNC4(dev), "pl190",
	    MTX_SPIN);

	/* Request memory resources */
	rid = 0;
	sc->intc_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->intc_res == NULL) {
		FUNC6(dev, "Error: could not allocate memory resources\n");
		return (ENXIO);
	}

	/*
	 * All interrupts should use IRQ line
	 */
	FUNC1(sc, VICINTSELECT, 0x00000000);
	/* Disable all interrupts */
	FUNC1(sc, VICINTENCLEAR, 0xffffffff);

	id = 0;
	for (i = 3; i >= 0; i--) {
		id = (id << 8) |
		     (FUNC0(sc, VICPERIPHID + i*4) & 0xff);
	}

	FUNC6(dev, "Peripheral ID: %08x\n", id);

	id = 0;
	for (i = 3; i >= 0; i--) {
		id = (id << 8) |
		     (FUNC0(sc, VICPRIMECELLID + i*4) & 0xff);
	}

	FUNC6(dev, "PrimeCell ID: %08x\n", id);

	/* PIC attachment */
	isrcs = sc->isrcs;
	name = FUNC4(sc->dev);
	for (irq = 0; irq < VIC_NIRQS; irq++) {
		isrcs[irq].irq = irq;
		error = FUNC7(&isrcs[irq].isrc, sc->dev,
		    0, "%s,%u", name, irq);
		if (error != 0)
			return (error);
	}

	xref = FUNC2(FUNC11(sc->dev));
	pic = FUNC9(sc->dev, xref);
	if (pic == NULL)
		return (ENXIO);

	return (FUNC8(sc->dev, xref, pl190_intc_intr, sc, 0));
}