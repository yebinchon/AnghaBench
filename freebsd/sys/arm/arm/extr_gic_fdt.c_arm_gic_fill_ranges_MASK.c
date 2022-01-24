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
struct TYPE_4__ {int nranges; TYPE_1__* ranges; } ;
struct arm_gic_fdt_softc {int addr_cells; int size_cells; TYPE_2__ base; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  host_cells ;
typedef  int cell_t ;
struct TYPE_3__ {int bus; int host; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(phandle_t node, struct arm_gic_fdt_softc *sc)
{
	pcell_t host_cells;
	cell_t *base_ranges;
	ssize_t nbase_ranges;
	int i, j, k;

	host_cells = 1;
	FUNC0(FUNC2(node), "#address-cells", &host_cells,
	    sizeof(host_cells));
	sc->addr_cells = 2;
	FUNC0(node, "#address-cells", &sc->addr_cells,
	    sizeof(sc->addr_cells));
	sc->size_cells = 2;
	FUNC0(node, "#size-cells", &sc->size_cells,
	    sizeof(sc->size_cells));

	nbase_ranges = FUNC1(node, "ranges");
	if (nbase_ranges < 0)
		return (-1);
	sc->base.nranges = nbase_ranges / sizeof(cell_t) /
	    (sc->addr_cells + host_cells + sc->size_cells);
	if (sc->base.nranges == 0)
		return (0);

	sc->base.ranges = FUNC4(sc->base.nranges * sizeof(sc->base.ranges[0]),
	    M_DEVBUF, M_WAITOK);
	base_ranges = FUNC4(nbase_ranges, M_DEVBUF, M_WAITOK);
	FUNC0(node, "ranges", base_ranges, nbase_ranges);

	for (i = 0, j = 0; i < sc->base.nranges; i++) {
		sc->base.ranges[i].bus = 0;
		for (k = 0; k < sc->addr_cells; k++) {
			sc->base.ranges[i].bus <<= 32;
			sc->base.ranges[i].bus |= base_ranges[j++];
		}
		sc->base.ranges[i].host = 0;
		for (k = 0; k < host_cells; k++) {
			sc->base.ranges[i].host <<= 32;
			sc->base.ranges[i].host |= base_ranges[j++];
		}
		sc->base.ranges[i].size = 0;
		for (k = 0; k < sc->size_cells; k++) {
			sc->base.ranges[i].size <<= 32;
			sc->base.ranges[i].size |= base_ranges[j++];
		}
	}

	FUNC3(base_ranges, M_DEVBUF);
	return (sc->base.nranges);
}