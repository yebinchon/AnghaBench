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
struct spi_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CH_CFG ; 
 int ENXIO ; 
 int FB_CLK_180 ; 
 int /*<<< orphan*/  FB_CLK_SEL ; 
 int FUNC0 (struct spi_softc*,int /*<<< orphan*/ ) ; 
 int RX_CH_ON ; 
 int TX_CH_ON ; 
 int /*<<< orphan*/  FUNC1 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct spi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct spi_softc* spi_sc ; 
 int /*<<< orphan*/  spi_spec ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct spi_softc *sc;
	int reg;

	sc = FUNC5(dev);
	sc->dev = dev;

	if (FUNC2(dev, spi_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	spi_sc = sc;

	FUNC1(sc, FB_CLK_SEL, FB_CLK_180);

	reg = FUNC0(sc, CH_CFG);
	reg |= (RX_CH_ON | TX_CH_ON);
	FUNC1(sc, CH_CFG, reg);

	FUNC4(dev, "spibus", 0);
	return (FUNC3(dev));
}