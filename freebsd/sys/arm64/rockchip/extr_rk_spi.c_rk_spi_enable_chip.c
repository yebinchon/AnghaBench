
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_spi_softc {int dummy; } ;


 int RK_SPI_ENR ;
 int RK_SPI_WRITE_4 (struct rk_spi_softc*,int ,int) ;

__attribute__((used)) static void
rk_spi_enable_chip(struct rk_spi_softc *sc, int enable)
{

 RK_SPI_WRITE_4(sc, RK_SPI_ENR, enable ? 1 : 0);
}
