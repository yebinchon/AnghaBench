
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_bsc_softc {scalar_t__ sc_totlen; scalar_t__ sc_resid; scalar_t__ sc_dlen; scalar_t__ sc_replen; int sc_flags; TYPE_1__* sc_curmsg; int * sc_data; } ;
struct TYPE_2__ {scalar_t__ len; int slave; int * buf; } ;


 int BCM_BSC_DATA ;
 int BCM_BSC_READ (struct bcm_bsc_softc*,int ) ;
 int BCM_BSC_STATUS ;
 int BCM_BSC_STATUS_TXD ;
 int BCM_BSC_WRITE (struct bcm_bsc_softc*,int ,int ) ;
 int BCM_I2C_READ ;
 int DEBUGF (struct bcm_bsc_softc*,int,char*,...) ;
 int DEVICE_DEBUGF (struct bcm_bsc_softc*,int,char*,int,...) ;

__attribute__((used)) static void
bcm_bsc_fill_tx_fifo(struct bcm_bsc_softc *sc)
{
 uint32_t status;


 do {
  if (sc->sc_resid == 0) {
   sc->sc_data = sc->sc_curmsg->buf;
   sc->sc_dlen = sc->sc_curmsg->len;
   sc->sc_resid = sc->sc_dlen;
   ++sc->sc_curmsg;
  }
  do {
   BCM_BSC_WRITE(sc, BCM_BSC_DATA, *sc->sc_data);
   DEBUGF(sc, 1, "0x%02x ", *sc->sc_data);
   ++sc->sc_data;
   --sc->sc_resid;
   --sc->sc_totlen;
   status = BCM_BSC_READ(sc, BCM_BSC_STATUS);
  } while (sc->sc_resid > 0 && (status & BCM_BSC_STATUS_TXD));
  if (sc->sc_replen > 0 && sc->sc_resid == 0) {
   sc->sc_replen -= sc->sc_dlen;
   if (sc->sc_replen == 0) {
    DEBUGF(sc, 1, " err=0\n");
    DEVICE_DEBUGF(sc, 2, "rstart 0x%02x\n",
        sc->sc_curmsg->slave | 0x01);
    DEVICE_DEBUGF(sc, 1,
        "read   0x%02x len %d: ",
        sc->sc_curmsg->slave | 0x01,
        sc->sc_totlen);
    sc->sc_flags |= BCM_I2C_READ;
    return;
   }
  }
 } while (sc->sc_totlen > 0 && (status & BCM_BSC_STATUS_TXD));
}
