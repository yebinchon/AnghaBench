
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_spi_softc {int dev; } ;


 int CS_MAX ;
 int EINVAL ;
 int RK_SPI_READ_4 (struct rk_spi_softc*,int ) ;
 int RK_SPI_SER ;
 int RK_SPI_WRITE_4 (struct rk_spi_softc*,int ,int) ;
 int SPIBUS_CS_HIGH ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
rk_spi_set_cs(struct rk_spi_softc *sc, uint32_t cs, bool active)
{
 uint32_t reg;

 if (cs & SPIBUS_CS_HIGH) {
  device_printf(sc->dev, "SPIBUS_CS_HIGH is not supported\n");
  return (EINVAL);
 }

 if (cs > CS_MAX)
  return (EINVAL);

 reg = RK_SPI_READ_4(sc, RK_SPI_SER);
 if (active)
  reg |= (1 << cs);
 else
  reg &= ~(1 << cs);
 RK_SPI_WRITE_4(sc, RK_SPI_SER, reg);

 return (0);
}
