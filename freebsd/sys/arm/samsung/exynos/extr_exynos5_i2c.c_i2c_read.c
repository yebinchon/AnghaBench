
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int ACKGEN ;
 int DPRINTF (char*,...) ;
 int I2CCON ;
 int I2CDS ;
 int I2CMODE_MR ;
 int I2CMODE_S ;
 int I2CSTAT ;
 int I2C_START_STOP ;
 int IIC_NOERR ;
 void* READ1 (struct i2c_softc*,int ) ;
 int RXTX_EN ;
 int WRITE1 (struct i2c_softc*,int ,int) ;
 int clear_ipend (struct i2c_softc*) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wait_for_iif (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_read(device_t dev, char *buf, int len,
    int *read, int last, int delay)
{
 struct i2c_softc *sc;
 int error;
 int reg;
 uint8_t d;

 sc = device_get_softc(dev);

 DPRINTF("i2c read\n");

 reg = (RXTX_EN);
 reg |= (I2CMODE_MR << I2CMODE_S);
 reg |= I2C_START_STOP;
 WRITE1(sc, I2CSTAT, reg);

 *read = 0;
 mtx_lock(&sc->mutex);


 clear_ipend(sc);
 error = wait_for_iif(sc);
 if (error) {
  DPRINTF("cant i2c read: iif error\n");
  mtx_unlock(&sc->mutex);
  return (error);
 }
 READ1(sc, I2CDS);

 DPRINTF("Read ");
 while (*read < len) {


  if (*read == (len - 1)) {
   reg = READ1(sc, I2CCON);
   reg &= ~(ACKGEN);
   WRITE1(sc, I2CCON, reg);
  }

  clear_ipend(sc);

  error = wait_for_iif(sc);
  if (error) {
   DPRINTF("cant i2c read: iif error\n");
   mtx_unlock(&sc->mutex);
   return (error);
  }

  d = READ1(sc, I2CDS);
  DPRINTF("0x%02x ", d);
  *buf++ = d;
  (*read)++;
 }
 DPRINTF("\n");

 mtx_unlock(&sc->mutex);
 return (IIC_NOERR);
}
