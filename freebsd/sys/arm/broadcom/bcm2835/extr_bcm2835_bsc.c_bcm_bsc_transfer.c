
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct iic_msg {int slave; int flags; size_t len; } ;
struct bcm_bsc_softc {int sc_flags; size_t sc_replen; size_t sc_totlen; int sc_mtx; struct iic_msg* sc_curmsg; scalar_t__ sc_resid; } ;
typedef struct bcm_bsc_softc* device_t ;


 int BCM_BSC_CTRL ;
 size_t BCM_BSC_CTRL_I2CEN ;
 size_t BCM_BSC_CTRL_INT_ALL ;
 size_t BCM_BSC_CTRL_READ ;
 size_t BCM_BSC_CTRL_ST ;
 int BCM_BSC_DLEN ;
 int BCM_BSC_LOCK (struct bcm_bsc_softc*) ;
 size_t BCM_BSC_READ (struct bcm_bsc_softc*,int ) ;
 int BCM_BSC_SLAVE ;
 int BCM_BSC_STATUS ;
 size_t BCM_BSC_STATUS_ERR ;
 size_t BCM_BSC_STATUS_TA ;
 int BCM_BSC_UNLOCK (struct bcm_bsc_softc*) ;
 int BCM_BSC_WRITE (struct bcm_bsc_softc*,int ,size_t) ;
 int BCM_I2C_BUSY ;
 int BCM_I2C_DONE ;
 int BCM_I2C_ERROR ;
 int BCM_I2C_READ ;
 int DEBUGF (struct bcm_bsc_softc*,int,char*,int) ;
 int DEVICE_DEBUGF (struct bcm_bsc_softc*,int,char*,...) ;
 int EIO ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int bcm_bsc_fill_tx_fifo (struct bcm_bsc_softc*) ;
 int bcm_bsc_reset (struct bcm_bsc_softc*) ;
 struct bcm_bsc_softc* device_get_softc (struct bcm_bsc_softc*) ;
 int hz ;
 int mtx_sleep (struct bcm_bsc_softc*,int *,int ,char*,int ) ;
 int wakeup (struct bcm_bsc_softc*) ;

__attribute__((used)) static int
bcm_bsc_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 struct bcm_bsc_softc *sc;
 struct iic_msg *endmsgs, *nxtmsg;
 uint32_t readctl, status;
 int err;
 uint16_t curlen;
 uint8_t curisread, curslave, nxtisread, nxtslave;

 sc = device_get_softc(dev);
 BCM_BSC_LOCK(sc);


 while (sc->sc_flags & BCM_I2C_BUSY)
  mtx_sleep(dev, &sc->sc_mtx, 0, "bscbusw", 0);


 sc->sc_flags = BCM_I2C_BUSY;

 DEVICE_DEBUGF(sc, 3, "Transfer %d msgs\n", nmsgs);


 bcm_bsc_reset(sc);
 err = 0;
 sc->sc_resid = 0;
 sc->sc_curmsg = msgs;
 endmsgs = &msgs[nmsgs];
 while (sc->sc_curmsg < endmsgs) {
  readctl = 0;
  curslave = sc->sc_curmsg->slave >> 1;
  curisread = sc->sc_curmsg->flags & IIC_M_RD;
  sc->sc_replen = 0;
  sc->sc_totlen = sc->sc_curmsg->len;




  for (nxtmsg = sc->sc_curmsg + 1; nxtmsg < endmsgs; ++nxtmsg) {
   nxtslave = nxtmsg->slave >> 1;
   if (curslave == nxtslave) {
    nxtisread = nxtmsg->flags & IIC_M_RD;
    if (curisread == nxtisread) {





     sc->sc_totlen += nxtmsg->len;
     continue;
    } else if (curisread == IIC_M_WR) {







     curisread = IIC_M_RD;
     sc->sc_replen = sc->sc_totlen;
     sc->sc_totlen += nxtmsg->len;
     continue;
    }
   }
   break;
  }





  curisread = (sc->sc_curmsg->flags & IIC_M_RD) ? 1 : 0;
  curslave = sc->sc_curmsg->slave | curisread;


  BCM_BSC_WRITE(sc, BCM_BSC_SLAVE, curslave >> 1);

  DEVICE_DEBUGF(sc, 2, "start  0x%02x\n", curslave);







  if (sc->sc_replen == 0) {
   DEVICE_DEBUGF(sc, 1, "%-6s 0x%02x len %d: ",
       (curisread) ? "read" : "write", curslave,
       sc->sc_totlen);
   curlen = sc->sc_totlen;
   if (curisread) {
    readctl = BCM_BSC_CTRL_READ;
    sc->sc_flags |= BCM_I2C_READ;
   } else {
    readctl = 0;
    sc->sc_flags &= ~BCM_I2C_READ;
   }
  } else {
   DEVICE_DEBUGF(sc, 1, "%-6s 0x%02x len %d: ",
       (curisread) ? "read" : "write", curslave,
       sc->sc_replen);
   BCM_BSC_WRITE(sc, BCM_BSC_DLEN, sc->sc_replen);
   BCM_BSC_WRITE(sc, BCM_BSC_CTRL, BCM_BSC_CTRL_I2CEN |
       BCM_BSC_CTRL_ST);
   do {
    status = BCM_BSC_READ(sc, BCM_BSC_STATUS);
    if (status & BCM_BSC_STATUS_ERR) {

     err = EIO;
     goto xfer_done;
    }
   } while ((status & BCM_BSC_STATUS_TA) == 0);





   curlen = sc->sc_totlen - sc->sc_replen;
   readctl = BCM_BSC_CTRL_READ;
   sc->sc_flags &= ~BCM_I2C_READ;
  }
  BCM_BSC_WRITE(sc, BCM_BSC_DLEN, curlen);
  BCM_BSC_WRITE(sc, BCM_BSC_CTRL, readctl | BCM_BSC_CTRL_I2CEN |
      BCM_BSC_CTRL_ST | BCM_BSC_CTRL_INT_ALL);

  if (!(sc->sc_curmsg->flags & IIC_M_RD)) {
   bcm_bsc_fill_tx_fifo(sc);
  }


  while (err == 0 && !(sc->sc_flags & BCM_I2C_DONE)) {
   err = mtx_sleep(sc, &sc->sc_mtx, 0, "bsciow", hz);
  }

  if (err == 0 && (sc->sc_flags & BCM_I2C_ERROR))
   err = EIO;
xfer_done:
  DEBUGF(sc, 1, " err=%d\n", err);
  DEVICE_DEBUGF(sc, 2, "stop\n");
  if (err != 0)
   break;
 }


 bcm_bsc_reset(sc);


 sc->sc_flags = 0;


 wakeup(dev);

 BCM_BSC_UNLOCK(sc);

 return (err);
}
