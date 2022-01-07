
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_i2c_softc {int busy; scalar_t__ transfer_done; int mtx; void* mode; } ;
struct iic_msg {int* buf; int len; int flags; int slave; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int IIC_M_NOSTART ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int LSB ;
 int PZERO ;
 int RK_I2C_CON ;
 void* RK_I2C_CON_MODE_RRX ;
 void* RK_I2C_CON_MODE_RX ;
 void* RK_I2C_CON_MODE_TX ;
 int RK_I2C_IEN ;
 int RK_I2C_IPD ;
 int RK_I2C_IPD_ALL ;
 int RK_I2C_LOCK (struct rk_i2c_softc*) ;
 int RK_I2C_MRXADDR ;
 int RK_I2C_MRXADDR_VALID (int) ;
 int RK_I2C_MRXRADDR ;
 int RK_I2C_UNLOCK (struct rk_i2c_softc*) ;
 int RK_I2C_WRITE (struct rk_i2c_softc*,int ,int) ;
 scalar_t__ cold ;
 struct rk_i2c_softc* device_get_softc (int ) ;
 int hz ;
 int msleep (struct rk_i2c_softc*,int *,int ,char*,int) ;
 int mtx_sleep (struct rk_i2c_softc*,int *,int ,char*,int ) ;
 int rk_i2c_intr_locked (struct rk_i2c_softc*) ;
 int rk_i2c_start_xfer (struct rk_i2c_softc*,struct iic_msg*,int) ;

__attribute__((used)) static int
rk_i2c_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 struct rk_i2c_softc *sc;
 uint32_t reg;
 bool last_msg;
 int i, j, timeout, err;

 sc = device_get_softc(dev);

 RK_I2C_LOCK(sc);

 while (sc->busy)
  mtx_sleep(sc, &sc->mtx, 0, "i2cbuswait", 0);
 sc->busy = 1;


 RK_I2C_WRITE(sc, RK_I2C_CON, 0);
 RK_I2C_WRITE(sc, RK_I2C_IEN, 0);


 RK_I2C_WRITE(sc, RK_I2C_IPD, RK_I2C_IPD_ALL);

 err = 0;
 for (i = 0; i < nmsgs; i++) {

  if (msgs == ((void*)0) || msgs[i].buf == ((void*)0) ||
      msgs[i].len == 0) {
   err = EINVAL;
   break;
  }




  if (i < nmsgs - 1) {
   if ((msgs[i + 1].flags & IIC_M_NOSTART) &&
       ((msgs[i].flags & IIC_M_RD) !=
       (msgs[i + 1].flags & IIC_M_RD) ||
       (msgs[i].slave != msgs[i + 1].slave))) {
    err = EINVAL;
    break;
   }
  }







  if (nmsgs - i >= 2 && msgs[i].len < 4 &&
      msgs[i].flags == (IIC_M_WR | IIC_M_NOSTOP) &&
      msgs[i + 1].flags == IIC_M_RD &&
      (msgs[i].slave & ~LSB) == (msgs[i + 1].slave & ~LSB)) {
   sc->mode = RK_I2C_CON_MODE_RRX;


   reg = msgs[i].slave & ~LSB;
   reg |= RK_I2C_MRXADDR_VALID(0);
   RK_I2C_WRITE(sc, RK_I2C_MRXADDR, reg);


   reg = 0;
   for (j = 0; j < msgs[i].len ; j++) {
    reg |= (msgs[i].buf[j] & 0xff) << (j * 8);
    reg |= RK_I2C_MRXADDR_VALID(j);
   }
   RK_I2C_WRITE(sc, RK_I2C_MRXRADDR, reg);

   i++;
  } else {
   if (msgs[i].flags & IIC_M_RD) {
    if (msgs[i].flags & IIC_M_NOSTART) {
     sc->mode = RK_I2C_CON_MODE_RX;
    } else {
     sc->mode = RK_I2C_CON_MODE_RRX;
     reg = msgs[i].slave & LSB;
     reg |= RK_I2C_MRXADDR_VALID(0);
     RK_I2C_WRITE(sc, RK_I2C_MRXADDR, reg);
     RK_I2C_WRITE(sc, RK_I2C_MRXRADDR, 0);
    }
   } else {
    sc->mode = RK_I2C_CON_MODE_TX;
   }
  }

  last_msg = (i > nmsgs - 1) ||
      !(msgs[i + 1].flags & IIC_M_NOSTART);
  rk_i2c_start_xfer(sc, msgs + i, last_msg);

  if (cold) {
   for(timeout = 10000; timeout > 0; timeout--) {
    rk_i2c_intr_locked(sc);
    if (sc->transfer_done != 0)
     break;
    DELAY(100);
   }
   if (timeout <= 0)
    err = ETIMEDOUT;
  } else {
   while (err == 0 && sc->transfer_done != 1) {
    err = msleep(sc, &sc->mtx, PZERO, "rk_i2c",
        10 * hz);
   }
  }
 }


 RK_I2C_WRITE(sc, RK_I2C_CON, 0);
 RK_I2C_WRITE(sc, RK_I2C_IEN, 0);

 sc->busy = 0;

 RK_I2C_UNLOCK(sc);
 return (err);
}
