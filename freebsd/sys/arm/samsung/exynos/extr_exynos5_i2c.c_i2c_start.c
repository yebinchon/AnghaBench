
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int ACKGEN ;
 int DELAY (int) ;
 int DPRINTF (char*,...) ;
 int I2CCON ;
 int I2CDS ;
 int I2CMODE_MT ;
 int I2CMODE_S ;
 int I2CSTAT ;
 int I2C_START_STOP ;
 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int IIC_NOERR ;
 int IRQ_EN ;
 int READ1 (struct i2c_softc*,int ) ;
 int RXTX_EN ;
 int WRITE1 (struct i2c_softc*,int ,int) ;
 struct i2c_softc* device_get_softc (int ) ;
 int is_ack (struct i2c_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wait_for_iif (struct i2c_softc*) ;
 int wait_for_nibb (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_start(device_t dev, u_char slave, int timeout)
{
 struct i2c_softc *sc;
 int error;
 int reg;

 sc = device_get_softc(dev);

 DPRINTF("i2c start\n");

 mtx_lock(&sc->mutex);






 if (slave & 1) {
  slave &= ~(1);
  slave <<= 1;
  slave |= 1;
 } else {
  slave <<= 1;
 }

 error = wait_for_nibb(sc);
 if (error) {
  mtx_unlock(&sc->mutex);
  DPRINTF("cant i2c start: IIC_EBUSERR\n");
  return (IIC_EBUSERR);
 }

 reg = READ1(sc, I2CCON);
 reg |= (IRQ_EN | ACKGEN);
 WRITE1(sc, I2CCON, reg);

 WRITE1(sc, I2CDS, slave);
 DELAY(50);

 reg = (RXTX_EN);
 reg |= I2C_START_STOP;
 reg |= (I2CMODE_MT << I2CMODE_S);
 WRITE1(sc, I2CSTAT, reg);

 error = wait_for_iif(sc);
 if (error) {
  DPRINTF("cant i2c start: iif error\n");

  mtx_unlock(&sc->mutex);
  return (error);
 }

 if (!is_ack(sc)) {
  DPRINTF("cant i2c start: no ack\n");

  mtx_unlock(&sc->mutex);
  return (IIC_ENOACK);
 }

 mtx_unlock(&sc->mutex);
 return (IIC_NOERR);
}
