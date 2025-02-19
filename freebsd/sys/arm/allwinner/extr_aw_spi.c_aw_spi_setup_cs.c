
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_spi_softc {int dummy; } ;


 int AW_SPI_READ_4 (struct aw_spi_softc*,int ) ;
 int AW_SPI_TCR ;
 int AW_SPI_TCR_SSSEL_MASK ;
 int AW_SPI_TCR_SSSEL_SHIFT ;
 int AW_SPI_TCR_SS_LEVEL ;
 int AW_SPI_TCR_SS_OWNER ;
 int AW_SPI_WRITE_4 (struct aw_spi_softc*,int ,int) ;

__attribute__((used)) static void
aw_spi_setup_cs(struct aw_spi_softc *sc, uint32_t cs, bool low)
{
 uint32_t reg;


 reg = AW_SPI_READ_4(sc, AW_SPI_TCR);
 reg &= ~(AW_SPI_TCR_SSSEL_MASK);
 reg |= cs << AW_SPI_TCR_SSSEL_SHIFT;
 reg |= AW_SPI_TCR_SS_OWNER;
 if (low)
  reg &= ~(AW_SPI_TCR_SS_LEVEL);
 else
  reg |= AW_SPI_TCR_SS_LEVEL;

 AW_SPI_WRITE_4(sc, AW_SPI_TCR, reg);
}
