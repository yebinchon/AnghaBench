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
struct adc_softc {int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_CFG ; 
 int /*<<< orphan*/  ADC_GC ; 
 int /*<<< orphan*/  ADC_HC0 ; 
 int CFG_MODE_12 ; 
 int CFG_MODE_M ; 
 int CFG_MODE_S ; 
 int ENXIO ; 
 int GC_ADCO ; 
 int GC_AVGE ; 
 int HC_AIEN ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int FUNC0 (struct adc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  adc_intr ; 
 struct adc_softc* adc_sc ; 
 int /*<<< orphan*/  adc_spec ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct adc_softc*,int /*<<< orphan*/ *) ; 
 struct adc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct adc_softc *sc;
	int err;
	int reg;

	sc = FUNC4(dev);

	if (FUNC2(dev, adc_spec, sc->res)) {
		FUNC5(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC7(sc->res[0]);
	sc->bsh = FUNC6(sc->res[0]);

	adc_sc = sc;

	/* Setup interrupt handler */
	err = FUNC3(dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, adc_intr, sc, &sc->ih);
	if (err) {
		FUNC5(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	/* Configure 12-bit mode */
	reg = FUNC0(sc, ADC_CFG);
	reg &= ~(CFG_MODE_M << CFG_MODE_S);
	reg |= (CFG_MODE_12 << CFG_MODE_S); /* 12bit */
	FUNC1(sc, ADC_CFG, reg);

	/* Configure for continuous conversion */
	reg = FUNC0(sc, ADC_GC);
	reg |= (GC_ADCO | GC_AVGE);
	FUNC1(sc, ADC_GC, reg);

	/* Disable interrupts */
	reg = FUNC0(sc, ADC_HC0);
	reg &= HC_AIEN;
	FUNC1(sc, ADC_HC0, reg);

	return (0);
}