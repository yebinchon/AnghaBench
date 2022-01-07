
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_spi_softc {int dummy; } ;


 int AW_SPI_GCR ;
 int AW_SPI_GCR_MODE_MASTER ;
 int AW_SPI_READ_4 (struct aw_spi_softc*,int ) ;
 int AW_SPI_TCR ;
 int AW_SPI_TCR_CPHA ;
 int AW_SPI_TCR_CPOL ;
 int AW_SPI_WRITE_4 (struct aw_spi_softc*,int ,int) ;
 int SPIBUS_MODE_CPHA ;
 int SPIBUS_MODE_CPOL ;

__attribute__((used)) static void
aw_spi_setup_mode(struct aw_spi_softc *sc, uint32_t mode)
{
 uint32_t reg;


 reg = AW_SPI_READ_4(sc, AW_SPI_GCR);
 reg |= AW_SPI_GCR_MODE_MASTER;
 AW_SPI_WRITE_4(sc, AW_SPI_GCR, reg);


 reg = AW_SPI_READ_4(sc, AW_SPI_TCR);
 if (mode & SPIBUS_MODE_CPHA)
  reg |= AW_SPI_TCR_CPHA;
 if (mode & SPIBUS_MODE_CPOL)
  reg |= AW_SPI_TCR_CPOL;

 AW_SPI_WRITE_4(sc, AW_SPI_TCR, reg);
}
