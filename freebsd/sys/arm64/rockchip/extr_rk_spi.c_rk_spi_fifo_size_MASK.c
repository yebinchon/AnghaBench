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
struct rk_spi_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rk_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK_SPI_TXFTLR ; 
 int /*<<< orphan*/  FUNC1 (struct rk_spi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t
FUNC2(struct rk_spi_softc *sc)
{
	uint32_t txftlr, reg;

	for (txftlr = 2; txftlr < 32; txftlr++) {
		FUNC1(sc, RK_SPI_TXFTLR, txftlr);
		reg = FUNC0(sc, RK_SPI_TXFTLR);
		if (reg != txftlr)
			break;
	}
	FUNC1(sc, RK_SPI_TXFTLR, 0);

	if (txftlr == 31)
		return 0;

	return txftlr;
}