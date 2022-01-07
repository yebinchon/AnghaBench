
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_bsc_softc {int sc_flags; scalar_t__ sc_totlen; } ;


 int BCM_BSC_LOCK (struct bcm_bsc_softc*) ;
 int BCM_BSC_READ (struct bcm_bsc_softc*,int ) ;
 int BCM_BSC_STATUS ;
 int BCM_BSC_STATUS_DONE ;
 int BCM_BSC_STATUS_ERRBITS ;
 int BCM_BSC_STATUS_RXD ;
 int BCM_BSC_STATUS_TXD ;
 int BCM_BSC_UNLOCK (struct bcm_bsc_softc*) ;
 int BCM_I2C_BUSY ;
 int BCM_I2C_DONE ;
 int BCM_I2C_ERROR ;
 int BCM_I2C_READ ;
 int DEBUGF (struct bcm_bsc_softc*,int,char*,int) ;
 int bcm_bsc_empty_rx_fifo (struct bcm_bsc_softc*) ;
 int bcm_bsc_fill_tx_fifo (struct bcm_bsc_softc*) ;
 int bcm_bsc_reset (struct bcm_bsc_softc*) ;
 int wakeup (struct bcm_bsc_softc*) ;

__attribute__((used)) static void
bcm_bsc_intr(void *arg)
{
 struct bcm_bsc_softc *sc;
 uint32_t status;

 sc = (struct bcm_bsc_softc *)arg;

 BCM_BSC_LOCK(sc);


 if ((sc->sc_flags & BCM_I2C_BUSY) == 0) {
  BCM_BSC_UNLOCK(sc);
  return;
 }

 status = BCM_BSC_READ(sc, BCM_BSC_STATUS);
 DEBUGF(sc, 4, " <intrstatus=0x%08x> ", status);


 if ((sc->sc_flags & BCM_I2C_READ) && (status & BCM_BSC_STATUS_RXD))
  bcm_bsc_empty_rx_fifo(sc);


 if (status & (BCM_BSC_STATUS_ERRBITS | BCM_BSC_STATUS_DONE)) {
  sc->sc_flags |= BCM_I2C_DONE;
  if (status & BCM_BSC_STATUS_ERRBITS)
   sc->sc_flags |= BCM_I2C_ERROR;

  bcm_bsc_reset(sc);
  wakeup(sc);
 } else if (!(sc->sc_flags & BCM_I2C_READ)) {





  if ((status & BCM_BSC_STATUS_TXD) && sc->sc_totlen > 0)
   bcm_bsc_fill_tx_fifo(sc);
 }

 BCM_BSC_UNLOCK(sc);
}
