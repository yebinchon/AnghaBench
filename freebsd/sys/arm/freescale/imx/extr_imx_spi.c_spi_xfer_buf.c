
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct spi_softc {int debug; scalar_t__ rxlen; scalar_t__ rxidx; scalar_t__ txlen; scalar_t__ txidx; int intreg; int mtx; void* txbuf; void* rxbuf; int dev; } ;


 int ECSPI_INTREG ;
 int EIO ;
 int INTREG_RDREN ;
 int INTREG_TDREN ;
 int WR4 (struct spi_softc*,int ,int) ;
 int device_printf (int ,char*,void*,void*,void*) ;
 int hz ;
 int msleep (struct spi_softc*,int *,int ,char*,int) ;
 int spi_fill_txfifo (struct spi_softc*) ;

__attribute__((used)) static int
spi_xfer_buf(struct spi_softc *sc, void *rxbuf, void *txbuf, uint32_t len)
{
 int err;

 if (sc->debug >= 1) {
  device_printf(sc->dev,
      "spi_xfer_buf, rxbuf %p txbuf %p len %u\n",
      rxbuf, txbuf, len);
 }

 if (len == 0)
  return (0);

 sc->rxbuf = rxbuf;
 sc->rxlen = len;
 sc->rxidx = 0;
 sc->txbuf = txbuf;
 sc->txlen = len;
 sc->txidx = 0;
 sc->intreg = INTREG_RDREN | INTREG_TDREN;
 spi_fill_txfifo(sc);


 WR4(sc, ECSPI_INTREG, sc->intreg);

 err = 0;
 while (err == 0 && sc->intreg != 0)
  err = msleep(sc, &sc->mtx, 0, "imxspi", 10 * hz);

 if (sc->rxidx != sc->rxlen || sc->txidx != sc->txlen)
  err = EIO;

 return (err);
}
