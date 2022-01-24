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
struct twl_softc {int /*<<< orphan*/  sc_scan_hook; int /*<<< orphan*/  sc_subaddr_map; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ TWL_CHIP_ID0 ; 
 int /*<<< orphan*/  TWL_INVALID_CHIP_ID ; 
 int /*<<< orphan*/  FUNC0 (struct twl_softc*) ; 
 int TWL_MAX_SUBADDRS ; 
 int /*<<< orphan*/  FUNC1 (struct twl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct twl_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct twl_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(void *dev)
{
	struct twl_softc *sc;
	unsigned i;
	uint8_t devs[TWL_MAX_SUBADDRS];
	uint8_t base = TWL_CHIP_ID0;

	sc = FUNC3((device_t)dev);

	FUNC6(devs, TWL_INVALID_CHIP_ID, TWL_MAX_SUBADDRS);

	/* Try each of the addresses (0x48, 0x49, 0x4a & 0x4b) to determine which
	 * sub modules we have.
	 */
	for (i = 0; i < TWL_MAX_SUBADDRS; i++) {
		if (FUNC7(sc, (base + i)) == 0) {
			devs[i] = (base + i);
			FUNC4(sc->sc_dev, "Found (sub)device at 0x%02x\n", (base + i));
		}
	}

	FUNC0(sc);
	FUNC5(sc->sc_subaddr_map, devs, TWL_MAX_SUBADDRS);
	FUNC1(sc);

	/* Finished with the interrupt hook */
	FUNC2(&sc->sc_scan_hook);
}