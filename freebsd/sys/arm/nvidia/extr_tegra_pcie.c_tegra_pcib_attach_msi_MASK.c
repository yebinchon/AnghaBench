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
struct tegra_pcib_softc {int /*<<< orphan*/  msi_intr_cookie; int /*<<< orphan*/  msi_irq_res; int /*<<< orphan*/  msi_page; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AFI_INTR_MASK ; 
 int AFI_INTR_MASK_MSI_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AFI_MSI_REGS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct tegra_pcib_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_pcib_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tegra_pcib_softc*,int /*<<< orphan*/ *) ; 
 struct tegra_pcib_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct tegra_pcib_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_pcib_softc*) ; 
 int /*<<< orphan*/  tegra_pcib_msi_intr ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_pcib_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct tegra_pcib_softc *sc;
	uint32_t reg;
	int i, rv;

	sc = FUNC5(dev);

	sc->msi_page = FUNC7(PAGE_SIZE, M_WAITOK, 0,
	    BUS_SPACE_MAXADDR, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);

	/* MSI BAR */
	FUNC10(sc, 9, FUNC11(sc->msi_page), FUNC11(sc->msi_page),
	    PAGE_SIZE, 0);

	/* Disble and clear all interrupts. */
	for (i = 0; i < AFI_MSI_REGS; i++) {
		FUNC3(sc, FUNC0(i), 0);
		FUNC3(sc, FUNC1(i), 0xFFFFFFFF);
	}
	rv = FUNC4(dev, sc->msi_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    tegra_pcib_msi_intr, NULL, sc, &sc->msi_intr_cookie);
	if (rv != 0) {
		FUNC6(dev, "cannot setup MSI interrupt handler\n");
		rv = ENXIO;
		goto out;
	}

	if (FUNC8(sc) != 0) {
		FUNC6(dev, "WARNING: unable to attach PIC\n");
		FUNC9(sc);
		goto out;
	}

	/* Unmask  MSI interrupt. */
	reg = FUNC2(sc, AFI_INTR_MASK);
	reg |= AFI_INTR_MASK_MSI_MASK;
	FUNC3(sc, AFI_INTR_MASK, reg);

out:
	return (rv);
}