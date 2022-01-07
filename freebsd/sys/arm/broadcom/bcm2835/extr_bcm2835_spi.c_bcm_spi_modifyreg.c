
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_spi_softc {int sc_mtx; } ;


 int BCM_SPI_READ (struct bcm_spi_softc*,int ) ;
 int BCM_SPI_WRITE (struct bcm_spi_softc*,int ,int ) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
bcm_spi_modifyreg(struct bcm_spi_softc *sc, uint32_t off, uint32_t mask,
 uint32_t value)
{
 uint32_t reg;

 mtx_assert(&sc->sc_mtx, MA_OWNED);
 reg = BCM_SPI_READ(sc, off);
 reg &= ~mask;
 reg |= value;
 BCM_SPI_WRITE(sc, off, reg);
}
