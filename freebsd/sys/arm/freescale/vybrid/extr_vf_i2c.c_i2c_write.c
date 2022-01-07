
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int I2C_IBDR ;
 int IIC_NOERR ;
 int WRITE1 (struct i2c_softc*,int ,int ) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vf_i2c_dbg (struct i2c_softc*,char*) ;
 int wait_for_iif (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_write(device_t dev, const char *buf, int len, int *sent, int timeout)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 vf_i2c_dbg(sc, "i2c write\n");

 *sent = 0;

 mtx_lock(&sc->mutex);
 while (*sent < len) {

  WRITE1(sc, I2C_IBDR, *buf++);

  error = wait_for_iif(sc);
  if (error) {
   mtx_unlock(&sc->mutex);
   return (error);
  }

  (*sent)++;
 }
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
