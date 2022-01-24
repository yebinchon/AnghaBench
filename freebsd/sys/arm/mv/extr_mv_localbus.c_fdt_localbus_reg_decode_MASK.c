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
typedef  scalar_t__ u_long ;
struct localbus_softc {TYPE_1__* sc_banks; int /*<<< orphan*/  sc_dev; } ;
struct localbus_devinfo {int di_bank; int /*<<< orphan*/  di_res; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ va; int /*<<< orphan*/  mapped; } ;

/* Variables and functions */
 int ENXIO ; 
 int MV_LOCALBUS_MAX_BANKS ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC6 (void*,int) ; 
 int FUNC7 (int*,int,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(phandle_t node, struct localbus_softc *sc,
    struct localbus_devinfo *di)
{
	u_long start, end, count;
	pcell_t *reg, *regptr;
	pcell_t addr_cells, size_cells;
	int tuple_size, tuples;
	int i, rv, bank;

	if (FUNC5(FUNC1(node), &addr_cells, &size_cells) != 0)
		return (ENXIO);

	tuple_size = sizeof(pcell_t) * (addr_cells + size_cells);
	tuples = FUNC0(node, "reg", tuple_size, (void **)&reg);
	FUNC3("addr_cells = %d, size_cells = %d\n", addr_cells, size_cells);
	FUNC3("tuples = %d, tuple size = %d\n", tuples, tuple_size);
	if (tuples <= 0)
		/* No 'reg' property in this node. */
		return (0);

	regptr = reg;
	for (i = 0; i < tuples; i++) {

		bank = FUNC6((void *)regptr, 1);

		if (bank >= MV_LOCALBUS_MAX_BANKS) {
			FUNC4(sc->sc_dev, "bank number [%d] out of "
			    "range\n", bank);
			continue;
		}

		/*
		 * If device doesn't have virtual to physical mapping don't add
		 * resources
		 */
		if (!(sc->sc_banks[bank].mapped)) {
			FUNC4(sc->sc_dev, "device [%d]: missing memory "
			    "mapping\n", bank);
			continue;
		}

		di->di_bank = bank;
		regptr += 1;

		/* Get address/size. */
		rv = FUNC7(regptr, addr_cells - 1, size_cells, &start,
		    &count);
		if (rv != 0) {
			FUNC9(&di->di_res);
			goto out;
		}

		/* Check if enough amount of memory is mapped */
		if (sc->sc_banks[bank].size < count) {
			FUNC4(sc->sc_dev, "device [%d]: not enough "
			    "memory reserved\n", bank);
			continue;
		}

		regptr += addr_cells - 1 + size_cells;

		/* Calculate address range relative to VA base. */
		start = sc->sc_banks[bank].va + start;
		end = start + count - 1;

		FUNC3("reg addr bank = %d, start = %lx, end = %lx, "
		    "count = %lx\n", bank, start, end, count);

		/* Use bank (CS) cell as rid. */
		FUNC8(&di->di_res, SYS_RES_MEMORY, di->di_bank,
		    start, end, count);
	}
	rv = 0;
out:
	FUNC2(reg);
	return (rv);
}