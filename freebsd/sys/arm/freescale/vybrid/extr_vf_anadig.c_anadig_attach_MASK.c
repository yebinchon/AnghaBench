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
struct anadig_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ANADIG_PLL1_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL2_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL3_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL4_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL5_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL6_CTRL ; 
 int /*<<< orphan*/  ANADIG_PLL7_CTRL ; 
 int /*<<< orphan*/  ANADIG_REG_3P0 ; 
 int ENABLE_LINREG ; 
 int ENXIO ; 
 int EN_CLK_TO_UTMI ; 
 int FUNC0 (struct anadig_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct anadig_softc*,int /*<<< orphan*/ ,int) ; 
 struct anadig_softc* anadig_sc ; 
 int /*<<< orphan*/  anadig_spec ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct anadig_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct anadig_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct anadig_softc *sc;
	int reg;

	sc = FUNC5(dev);

	if (FUNC4(dev, anadig_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC10(sc->res[0]);
	sc->bsh = FUNC9(sc->res[0]);

	anadig_sc = sc;

	/* Enable USB PLLs */
	FUNC7(sc, ANADIG_PLL3_CTRL);
	FUNC7(sc, ANADIG_PLL7_CTRL);

	/* Enable other PLLs */
	FUNC7(sc, ANADIG_PLL1_CTRL);
	FUNC7(sc, ANADIG_PLL2_CTRL);
	FUNC7(sc, ANADIG_PLL4_CTRL);
	FUNC7(sc, ANADIG_PLL5_CTRL);
	FUNC7(sc, ANADIG_PLL6_CTRL);

	/* Enable USB voltage regulator */
	reg = FUNC0(sc, ANADIG_REG_3P0);
	reg |= (ENABLE_LINREG);
	FUNC3(sc, ANADIG_REG_3P0, reg);

	/* Give clocks to USB */
	reg = FUNC0(sc, FUNC2(0));
	reg |= (EN_CLK_TO_UTMI);
	FUNC3(sc, FUNC2(0), reg);

	reg = FUNC0(sc, FUNC2(1));
	reg |= (EN_CLK_TO_UTMI);
	FUNC3(sc, FUNC2(1), reg);

#if 0
	printf("USB_ANALOG_USB_MISC(0) == 0x%08x\n",
	    READ4(sc, USB_ANALOG_USB_MISC(0)));
	printf("USB_ANALOG_USB_MISC(1) == 0x%08x\n",
	    READ4(sc, USB_ANALOG_USB_MISC(1)));
#endif

	return (0);
}