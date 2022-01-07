
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_snd; } ;
struct fv_softc {int sc_inten; int sc_rxint_mask; int sc_txint_mask; int fv_dev; struct ifnet* fv_ifp; } ;


 int CSR_FULLDUP ;
 int CSR_READ_4 (struct fv_softc*,int ) ;
 int CSR_STATUS ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int) ;
 int FULLDUP_CS ;
 int FULLDUP_NRP_SHIFT ;
 int FULLDUP_NTP_SHIFT ;
 int FULLDUP_RT_SHIFT ;
 int FULLDUP_TT_SHIFT ;
 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int STATUS_AIS ;
 int STATUS_UNF ;
 int device_printf (int ,char*,...) ;
 int fv_rx (struct fv_softc*) ;
 int fv_start_locked (struct ifnet*) ;
 int fv_tx (struct fv_softc*) ;

__attribute__((used)) static void
fv_intr(void *arg)
{
 struct fv_softc *sc = arg;
 uint32_t status;
 struct ifnet *ifp = sc->fv_ifp;

 FV_LOCK(sc);

 status = CSR_READ_4(sc, CSR_STATUS);

 while((status & sc->sc_inten) != 0) {
  if (status) {
   CSR_WRITE_4(sc, CSR_STATUS, status);
  }
  if (status & STATUS_UNF) {
   device_printf(sc->fv_dev, "Transmit Underflow\n");
  }
  if (status & sc->sc_rxint_mask) {
   fv_rx(sc);
  }
  if (status & sc->sc_txint_mask) {
   fv_tx(sc);
  }
  if (status & STATUS_AIS) {
   device_printf(sc->fv_dev, "Abnormal Interrupt %x\n",
       status);
  }
  CSR_WRITE_4(sc, CSR_FULLDUP, FULLDUP_CS |
      (1 << FULLDUP_TT_SHIFT) | (3 << FULLDUP_NTP_SHIFT) |
      (2 << FULLDUP_RT_SHIFT) | (2 << FULLDUP_NRP_SHIFT));


  status = CSR_READ_4(sc, CSR_STATUS);
 }


 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  fv_start_locked(ifp);

 FV_UNLOCK(sc);
}
