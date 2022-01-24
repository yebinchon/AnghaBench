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
struct spi_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTAR_CPHA ; 
 int CTAR_CPOL ; 
 int CTAR_FMSZ_8 ; 
 int CTAR_FMSZ_M ; 
 int CTAR_FMSZ_S ; 
 int CTAR_LSBFE ; 
 int CTAR_PBR_7 ; 
 int CTAR_PBR_M ; 
 int CTAR_PBR_S ; 
 int ENXIO ; 
 int MCR_CLR_RXF ; 
 int MCR_CLR_TXF ; 
 int MCR_CONT_SCKE ; 
 int MCR_FRZ ; 
 int MCR_HALT ; 
 int MCR_MDIS ; 
 int MCR_MSTR ; 
 int MCR_PCSIS_M ; 
 int MCR_PCSIS_S ; 
 int FUNC0 (struct spi_softc*,int /*<<< orphan*/ ) ; 
 int RSER_EOQF_RE ; 
 int /*<<< orphan*/  SPI_CTAR0 ; 
 int /*<<< orphan*/  SPI_MCR ; 
 int /*<<< orphan*/  SPI_RSER ; 
 int /*<<< orphan*/  FUNC1 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct spi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_spec ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct spi_softc *sc;
	uint32_t reg;

	sc = FUNC5(dev);

	if (FUNC2(dev, spi_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	reg = FUNC0(sc, SPI_MCR);
	reg |= MCR_MSTR;
	reg &= ~(MCR_CONT_SCKE | MCR_MDIS | MCR_FRZ);
	reg &= ~(MCR_PCSIS_M << MCR_PCSIS_S);
	reg |= (MCR_PCSIS_M << MCR_PCSIS_S);	/* PCS Active low */
	reg |= (MCR_CLR_TXF | MCR_CLR_RXF);
	FUNC1(sc, SPI_MCR, reg);

	reg = FUNC0(sc, SPI_RSER);
	reg |= RSER_EOQF_RE;
	FUNC1(sc, SPI_RSER, reg);

	reg = FUNC0(sc, SPI_MCR);
	reg &= ~MCR_HALT;
	FUNC1(sc, SPI_MCR, reg);

	reg = FUNC0(sc, SPI_CTAR0);
	reg &= ~(CTAR_FMSZ_M << CTAR_FMSZ_S);
	reg |= (CTAR_FMSZ_8 << CTAR_FMSZ_S);
	/*
	 * TODO: calculate BR
	 * SCK baud rate = ( fsys / PBR ) * (1 + DBR) / BR
	 *
	 * reg &= ~(CTAR_BR_M << CTAR_BR_S);
	 */
	reg &= ~CTAR_CPOL; /* Polarity */
	reg |= CTAR_CPHA;
	/*
	 * Set LSB (Less significant bit first)
	 * must be used for some applications, e.g. some LCDs
	 */
	reg |= CTAR_LSBFE;
	FUNC1(sc, SPI_CTAR0, reg);

	reg = FUNC0(sc, SPI_CTAR0);
	reg &= ~(CTAR_PBR_M << CTAR_PBR_S);
	reg |= (CTAR_PBR_7 << CTAR_PBR_S);
	FUNC1(sc, SPI_CTAR0, reg);

	FUNC4(dev, "spibus", 0);
	return (FUNC3(dev));
}