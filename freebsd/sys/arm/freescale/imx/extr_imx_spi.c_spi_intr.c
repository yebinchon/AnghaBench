
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_softc {int intreg; int debug; scalar_t__ txidx; scalar_t__ txlen; scalar_t__ fifocnt; int mtx; int dev; int rxidx; } ;


 int ECSPI_INTREG ;
 int ECSPI_STATREG ;
 int INTREG_RREN ;
 int INTREG_TCEN ;
 int INTREG_TEEN ;
 int RD4 (struct spi_softc*,int ) ;
 int SREG_RO ;
 int SREG_RR ;
 int SREG_TC ;
 int SREG_TDR ;
 int SREG_TE ;
 int WR4 (struct spi_softc*,int ,int) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int,...) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int spi_empty_rxfifo (struct spi_softc*) ;
 int spi_fill_txfifo (struct spi_softc*) ;
 int wakeup (struct spi_softc*) ;

__attribute__((used)) static void
spi_intr(void *arg)
{
 struct spi_softc *sc = arg;
 uint32_t intreg, status;

 mtx_lock(&sc->mtx);

 sc = arg;
 intreg = sc->intreg;
 status = RD4(sc, ECSPI_STATREG);
 WR4(sc, ECSPI_STATREG, status);






 if (__predict_false(status & SREG_RO)) {
  if (sc->debug || bootverbose) {
   device_printf(sc->dev, "rxoverflow rxidx %u txidx %u\n",
       sc->rxidx, sc->txidx);
  }
  sc->intreg = 0;
  wakeup(sc);
  mtx_unlock(&sc->mtx);
  return;
 }

 if (status & SREG_RR)
  spi_empty_rxfifo(sc);

 if (status & SREG_TDR)
  spi_fill_txfifo(sc);
 if (sc->txidx == sc->txlen) {
  if ((status & SREG_TC) && sc->fifocnt == 0) {
   sc->intreg = 0;
   wakeup(sc);
  } else if (status & SREG_TE) {
   sc->intreg &= ~(sc->intreg & ~INTREG_TEEN);
   sc->intreg |= INTREG_TCEN | INTREG_RREN;
  }
 }






 if (sc->intreg != intreg) {
  WR4(sc, ECSPI_INTREG, sc->intreg);
  (void)RD4(sc, ECSPI_INTREG);
 }

 if (sc->debug >= 3) {
  device_printf(sc->dev,
      "spi_intr, sreg 0x%08x intreg was 0x%08x now 0x%08x\n",
      status, intreg, sc->intreg);
 }

 mtx_unlock(&sc->mtx);
}
