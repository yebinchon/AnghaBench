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
struct al_msix_softc {int irq_min; int irq_max; scalar_t__ irq_count; int /*<<< orphan*/  irq_alloc; int /*<<< orphan*/  msi_mtx; int /*<<< orphan*/ * gic_dev; int /*<<< orphan*/ * res; scalar_t__ base_addr; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  icells ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int INTR_RANGE_COUNT ; 
 int IRQ_OFFSET ; 
 scalar_t__ MAX_MSIX_COUNT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_FIRSTFIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (intptr_t,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int*,int) ; 
 intptr_t FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 struct al_msix_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,intptr_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct al_msix_softc	*sc;
	device_t		gic_dev;
	phandle_t		iparent;
	phandle_t		node;
	intptr_t		xref;
	int			interrupts[INTR_RANGE_COUNT];
	int			nintr, i, rid;
	uint32_t		icells, *intr;

	sc = FUNC8(dev);

	node = FUNC13(dev);
	xref = FUNC5(node);
	FUNC1(xref, dev);

	rid = 0;
	sc->res = FUNC6(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->res == NULL) {
		FUNC9(dev, "Failed to allocate resource\n");
		return (ENXIO);
	}

	sc->base_addr = (bus_addr_t)FUNC14(sc->res);

	/* Register this device to handle MSI interrupts */
	if (FUNC10(dev, xref) != 0) {
		FUNC9(dev, "could not register MSI-X controller\n");
		return (ENXIO);
	}
	else
		FUNC9(dev, "MSI-X controller registered\n");

	/* Find root interrupt controller */
	iparent = FUNC12(node);
	if (iparent == 0) {
		FUNC9(dev, "No interrupt-parrent found. "
				"Error in DTB\n");
		return (ENXIO);
	} else {
		/* While at parent - store interrupt cells prop */
		if (FUNC4(FUNC3(iparent),
		    "#interrupt-cells", &icells, sizeof(icells)) == -1) {
			FUNC9(dev, "DTB: Missing #interrupt-cells "
			    "property in GIC node\n");
			return (ENXIO);
		}
	}

	gic_dev = FUNC0(iparent);
	if (gic_dev == NULL) {
		FUNC9(dev, "Cannot find GIC device\n");
		return (ENXIO);
	}
	sc->gic_dev = gic_dev;

	/* Manually read range of interrupts from DTB */
	nintr = FUNC2(node, "interrupts", sizeof(*intr),
	    (void **)&intr);
	if (nintr == 0) {
		FUNC9(dev, "Cannot read interrupts prop from DTB\n");
		return (ENXIO);
	} else if ((nintr / icells) != INTR_RANGE_COUNT) {
		/* Supposed to have min and max value only */
		FUNC9(dev, "Unexpected count of interrupts "
				"in DTB node\n");
		return (EINVAL);
	}

	/* Read interrupt range values */
	for (i = 0; i < INTR_RANGE_COUNT; i++)
		interrupts[i] = intr[(i * icells) + IRQ_OFFSET];

	sc->irq_min = interrupts[0];
	sc->irq_max = interrupts[1];
	sc->irq_count = (sc->irq_max - sc->irq_min + 1);

	if (sc->irq_count > MAX_MSIX_COUNT) {
		FUNC9(dev, "Available MSI-X count exceeds buffer size."
				" Capping to %d\n", MAX_MSIX_COUNT);
		sc->irq_count = MAX_MSIX_COUNT;
	}

	FUNC11(&sc->msi_mtx, "msi_mtx", NULL, MTX_DEF);

	sc->irq_alloc = FUNC15("Alpine MSI-X IRQs", 0, sc->irq_count,
	    1, 0, M_FIRSTFIT | M_WAITOK);

	FUNC9(dev, "MSI-X SPI IRQ %d-%d\n", sc->irq_min, sc->irq_max);

	return (FUNC7(dev));
}