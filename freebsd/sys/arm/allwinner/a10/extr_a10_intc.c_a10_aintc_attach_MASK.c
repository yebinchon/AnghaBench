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
struct a10_aintc_softc {int /*<<< orphan*/  aintc_res; int /*<<< orphan*/  mtx; int /*<<< orphan*/  aintc_bsh; int /*<<< orphan*/  aintc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SW_INT_NMI_CTRL_REG ; 
 int /*<<< orphan*/  SW_INT_PROTECTION_REG ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (struct a10_aintc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct a10_aintc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct a10_aintc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct a10_aintc_softc *sc = FUNC6(dev);
	int rid = 0;
	int i;
	sc->sc_dev = dev;

	sc->aintc_res = FUNC4(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (!sc->aintc_res) {
		FUNC7(dev, "could not allocate resource\n");
		goto error;
	}

	sc->aintc_bst = FUNC10(sc->aintc_res);
	sc->aintc_bsh = FUNC9(sc->aintc_res);

	FUNC8(&sc->mtx, "A10 AINTC lock", "", MTX_SPIN);

	/* Disable & clear all interrupts */
	for (i = 0; i < 3; i++) {
		FUNC3(sc, FUNC0(i), 0);
		FUNC3(sc, FUNC1(i), 0xffffffff);
	}
	/* enable protection mode*/
	FUNC3(sc, SW_INT_PROTECTION_REG, 0x01);

	/* config the external interrupt source type*/
	FUNC3(sc, SW_INT_NMI_CTRL_REG, 0x00);

	if (FUNC2(sc) != 0) {
		FUNC7(dev, "could not attach PIC\n");
		return (ENXIO);
	}

	return (0);

error:
	FUNC5(dev, SYS_RES_MEMORY, rid,
	    sc->aintc_res);
	return (ENXIO);
}