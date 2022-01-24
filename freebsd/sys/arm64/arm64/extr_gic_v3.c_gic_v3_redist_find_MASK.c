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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u_int ;
struct resource {int dummy; } ;
struct TYPE_4__ {size_t nregions; TYPE_1__** pcpu; struct resource** regions; } ;
struct gic_v3_softc {int /*<<< orphan*/  dev; TYPE_2__ gic_redists; } ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
struct TYPE_3__ {int lpi_enabled; struct resource res; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (size_t) ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  GICR_PIDR2 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
#define  GICR_PIDR2_ARCH_GICv3 129 
#define  GICR_PIDR2_ARCH_GICv4 128 
 scalar_t__ GICR_RD_BASE_SIZE ; 
 scalar_t__ GICR_RESERVED_SIZE ; 
 scalar_t__ GICR_SGI_BASE_SIZE ; 
 int /*<<< orphan*/  GICR_TYPER ; 
 int GICR_TYPER_AFF_SHIFT ; 
 int GICR_TYPER_LAST ; 
 int GICR_TYPER_VLPIS ; 
 scalar_t__ GICR_VLPI_BASE_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC7 (size_t) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct gic_v3_softc *sc)
{
	struct resource r_res;
	bus_space_handle_t r_bsh;
	uint64_t aff;
	uint64_t typer;
	uint32_t pidr2;
	u_int cpuid;
	size_t i;

	cpuid = FUNC7(cpuid);

	aff = FUNC4(cpuid);
	/* Affinity in format for comparison with typer */
	aff = (FUNC3(aff) << 24) | (FUNC2(aff) << 16) |
	    (FUNC1(aff) << 8) | FUNC0(aff);

	if (bootverbose) {
		FUNC10(sc->dev,
		    "Start searching for Re-Distributor\n");
	}
	/* Iterate through Re-Distributor regions */
	for (i = 0; i < sc->gic_redists.nregions; i++) {
		/* Take a copy of the region's resource */
		r_res = *sc->gic_redists.regions[i];
		r_bsh = FUNC11(&r_res);

		pidr2 = FUNC8(&r_res, GICR_PIDR2);
		switch (FUNC5(pidr2)) {
		case GICR_PIDR2_ARCH_GICv3: /* fall through */
		case GICR_PIDR2_ARCH_GICv4:
			break;
		default:
			FUNC10(sc->dev,
			    "No Re-Distributor found for CPU%u\n", cpuid);
			return (ENODEV);
		}

		do {
			typer = FUNC9(&r_res, GICR_TYPER);
			if ((typer >> GICR_TYPER_AFF_SHIFT) == aff) {
				FUNC6(sc->gic_redists.pcpu[cpuid] != NULL,
				    ("Invalid pointer to per-CPU redistributor"));
				/* Copy res contents to its final destination */
				sc->gic_redists.pcpu[cpuid]->res = r_res;
				sc->gic_redists.pcpu[cpuid]->lpi_enabled = false;
				if (bootverbose) {
					FUNC10(sc->dev,
					    "CPU%u Re-Distributor has been found\n",
					    cpuid);
				}
				return (0);
			}

			r_bsh += (GICR_RD_BASE_SIZE + GICR_SGI_BASE_SIZE);
			if ((typer & GICR_TYPER_VLPIS) != 0) {
				r_bsh +=
				    (GICR_VLPI_BASE_SIZE + GICR_RESERVED_SIZE);
			}

			FUNC12(&r_res, r_bsh);
		} while ((typer & GICR_TYPER_LAST) == 0);
	}

	FUNC10(sc->dev, "No Re-Distributor found for CPU%u\n", cpuid);
	return (ENXIO);
}