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
struct ti_spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MCSPI_CONF_CLKG ; 
 int MCSPI_CONF_CLK_MSK ; 
 int MCSPI_CONF_CLK_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MCSPI_CTRL_EXTCLK_MSK ; 
 int MCSPI_CTRL_EXTCLK_SHIFT ; 
 int MCSPI_EXTCLK_MSK ; 
 int TI_SPI_GCLK ; 
 int FUNC2 (struct ti_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_spi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ti_spi_softc *sc, int ch, int freq)
{
	uint32_t clkdiv, conf, div, extclk, reg;

	clkdiv = TI_SPI_GCLK / freq;
	if (clkdiv > MCSPI_EXTCLK_MSK) {
		extclk = 0;
		clkdiv = 0;
		div = 1;
		while (TI_SPI_GCLK / div > freq && clkdiv <= 0xf) {
			clkdiv++;
			div <<= 1;
		}
		conf = clkdiv << MCSPI_CONF_CLK_SHIFT;
	} else {
		extclk = clkdiv >> 4;
		clkdiv &= MCSPI_CONF_CLK_MSK;
		conf = MCSPI_CONF_CLKG | clkdiv << MCSPI_CONF_CLK_SHIFT;
	}

	reg = FUNC2(sc, FUNC1(ch));
	reg &= ~(MCSPI_CTRL_EXTCLK_MSK << MCSPI_CTRL_EXTCLK_SHIFT);
	reg |= extclk << MCSPI_CTRL_EXTCLK_SHIFT;
	FUNC3(sc, FUNC1(ch), reg);

	reg = FUNC2(sc, FUNC0(ch));
	reg &= ~(MCSPI_CONF_CLKG | MCSPI_CONF_CLK_MSK << MCSPI_CONF_CLK_SHIFT);
	FUNC3(sc, FUNC0(ch), reg | conf);
}