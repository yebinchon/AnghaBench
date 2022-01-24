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
struct rk_spi_softc {scalar_t__ txidx; scalar_t__ txlen; int intreg; } ;

/* Variables and functions */
 int ISR_RFFIS ; 
 int ISR_TFEIS ; 
 int /*<<< orphan*/  RK_SPI_ICR ; 
 int /*<<< orphan*/  RK_SPI_IMR ; 
 int /*<<< orphan*/  RK_SPI_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct rk_spi_softc*) ; 
 int FUNC1 (struct rk_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_spi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_spi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rk_spi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rk_spi_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct rk_spi_softc *sc;
	uint32_t intreg, isr;

	sc = arg;

	FUNC0(sc);
	intreg = FUNC1(sc, RK_SPI_IMR);
	isr = FUNC1(sc, RK_SPI_ISR);
	FUNC3(sc, RK_SPI_ICR, isr);

	if (isr & ISR_RFFIS)
		FUNC4(sc);

	if (isr & ISR_TFEIS)
		FUNC5(sc);

	/* no bytes left, disable interrupt */
	if (sc->txidx == sc->txlen) {
		sc->intreg = 0;
		FUNC6(sc);
	}

	if (sc->intreg != intreg) {
		(void)FUNC3(sc, RK_SPI_IMR, sc->intreg);
		(void)FUNC1(sc, RK_SPI_IMR);
	}

	FUNC2(sc);
}