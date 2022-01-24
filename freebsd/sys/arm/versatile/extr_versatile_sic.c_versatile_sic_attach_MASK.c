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
typedef  size_t uint32_t ;
struct versatile_sic_softc {int /*<<< orphan*/  dev; struct versatile_sic_irqsrc* isrcs; int /*<<< orphan*/  intrh; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  mtx; } ;
struct versatile_sic_irqsrc {size_t irq; int /*<<< orphan*/  isrc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SIC_ENCLR ; 
 size_t SIC_NIRQS ; 
 int /*<<< orphan*/  FUNC1 (struct versatile_sic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct versatile_sic_softc*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct versatile_sic_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  versatile_sic_filter ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct		versatile_sic_softc *sc = FUNC5(dev);
	int		rid, error;
	uint32_t	irq;
	const char	*name;
	struct		versatile_sic_irqsrc *isrcs;

	sc->dev = dev;
	FUNC9(&sc->mtx, FUNC4(dev), "sic",
	    MTX_SPIN);

	/* Request memory resources */
	rid = 0;
	sc->mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC6(dev, "Error: could not allocate memory resources\n");
		return (ENXIO);
	}

	/* Request memory resources */
	rid = 0;
	sc->irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC6(dev, "could not allocate IRQ resources\n");
		FUNC11(dev);
		return (ENXIO);
	}

	if ((FUNC3(dev, sc->irq_res, INTR_TYPE_MISC,
	    versatile_sic_filter, NULL, sc, &sc->intrh))) {
		FUNC6(dev,
		    "unable to register interrupt handler\n");
		FUNC11(dev);
		return (ENXIO);
	}

	/* Disable all interrupts on SIC */
	FUNC1(sc, SIC_ENCLR, 0xffffffff);

	/* PIC attachment */
	isrcs = sc->isrcs;
	name = FUNC4(sc->dev);
	for (irq = 0; irq < SIC_NIRQS; irq++) {
		isrcs[irq].irq = irq;
		error = FUNC7(&isrcs[irq].isrc, sc->dev,
		    0, "%s,%u", name, irq);
		if (error != 0)
			return (error);
	}

	FUNC8(dev, FUNC0(FUNC10(dev)));

	return (0);
}