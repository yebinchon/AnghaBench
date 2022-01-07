
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_spi_softc {int dummy; } ;


 int MCSPI_CONF_CH (int) ;
 int MCSPI_CONF_CLKG ;
 int MCSPI_CONF_CLK_MSK ;
 int MCSPI_CONF_CLK_SHIFT ;
 int MCSPI_CTRL_CH (int) ;
 int MCSPI_CTRL_EXTCLK_MSK ;
 int MCSPI_CTRL_EXTCLK_SHIFT ;
 int MCSPI_EXTCLK_MSK ;
 int TI_SPI_GCLK ;
 int TI_SPI_READ (struct ti_spi_softc*,int ) ;
 int TI_SPI_WRITE (struct ti_spi_softc*,int ,int) ;

__attribute__((used)) static void
ti_spi_set_clock(struct ti_spi_softc *sc, int ch, int freq)
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

 reg = TI_SPI_READ(sc, MCSPI_CTRL_CH(ch));
 reg &= ~(MCSPI_CTRL_EXTCLK_MSK << MCSPI_CTRL_EXTCLK_SHIFT);
 reg |= extclk << MCSPI_CTRL_EXTCLK_SHIFT;
 TI_SPI_WRITE(sc, MCSPI_CTRL_CH(ch), reg);

 reg = TI_SPI_READ(sc, MCSPI_CONF_CH(ch));
 reg &= ~(MCSPI_CONF_CLKG | MCSPI_CONF_CLK_MSK << MCSPI_CONF_CLK_SHIFT);
 TI_SPI_WRITE(sc, MCSPI_CONF_CH(ch), reg | conf);
}
