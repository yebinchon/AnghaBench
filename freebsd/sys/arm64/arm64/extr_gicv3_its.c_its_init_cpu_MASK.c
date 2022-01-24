#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  size_t u_int ;
struct redist_pcpu {int lpi_enabled; int /*<<< orphan*/  res; } ;
struct gicv3_its_softc {TYPE_1__** sc_its_cols; int /*<<< orphan*/  sc_cpus; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {size_t col_id; int /*<<< orphan*/  col_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GICR_TYPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GICR_TYPER_PLPIS ; 
 int /*<<< orphan*/  GITS_TYPER ; 
 int GITS_TYPER_PTA ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gicv3_its_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct redist_pcpu* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct gicv3_its_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev, struct gicv3_its_softc *sc)
{
	device_t gicv3;
	vm_paddr_t target;
	u_int cpuid;
	struct redist_pcpu *rpcpu;

	gicv3 = FUNC3(dev);
	cpuid = FUNC2(cpuid);
	if (!FUNC0(cpuid, &sc->sc_cpus))
		return (0);

	/* Check if the ITS is enabled on this CPU */
	if ((FUNC5(gicv3, GICR_TYPER) & GICR_TYPER_PLPIS) == 0)
		return (ENXIO);

	rpcpu = FUNC7(dev);

	/* Do per-cpu LPI init once */
	if (!rpcpu->lpi_enabled) {
		FUNC10(dev, sc);
		rpcpu->lpi_enabled = true;
	}

	if ((FUNC4(sc, GITS_TYPER) & GITS_TYPER_PTA) != 0) {
		/* This ITS wants the redistributor physical address */
		target = FUNC12(FUNC11(&rpcpu->res));
	} else {
		/* This ITS wants the unique processor number */
		target = FUNC1(FUNC6(gicv3, GICR_TYPER));
	}

	sc->sc_its_cols[cpuid]->col_target = target;
	sc->sc_its_cols[cpuid]->col_id = cpuid;

	FUNC9(dev, sc->sc_its_cols[cpuid], 1);
	FUNC8(dev, sc->sc_its_cols[cpuid]);

	return (0);
}