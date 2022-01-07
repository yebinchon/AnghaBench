
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rk_spi_softc {scalar_t__ txidx; scalar_t__ txlen; scalar_t__ fifo_size; int intreg; int * txbuf; } ;


 int IMR_RFFIM ;
 int IMR_TFEIM ;
 scalar_t__ RK_SPI_READ_4 (struct rk_spi_softc*,int ) ;
 int RK_SPI_TXDR ;
 int RK_SPI_TXFLR ;
 int RK_SPI_WRITE_4 (struct rk_spi_softc*,int ,int ) ;

__attribute__((used)) static void
rk_spi_fill_txfifo(struct rk_spi_softc *sc)
{
 uint32_t txlevel;
 txlevel = RK_SPI_READ_4(sc, RK_SPI_TXFLR);
 int cnt = 0;

 while (sc->txidx < sc->txlen && txlevel < sc->fifo_size) {
  RK_SPI_WRITE_4(sc, RK_SPI_TXDR, sc->txbuf[sc->txidx++]);
  txlevel++;
  cnt++;
 }

 if (sc->txidx != sc->txlen)
  sc->intreg |= (IMR_TFEIM | IMR_RFFIM);
}
