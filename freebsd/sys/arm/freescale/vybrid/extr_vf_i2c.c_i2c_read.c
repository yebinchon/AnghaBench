
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_IBCR ;
 int I2C_IBDR ;
 int IBCR_IBIE ;
 int IBCR_MSSL ;
 int IBCR_NOACK ;
 int IIC_NOERR ;
 int READ1 (struct i2c_softc*,int ) ;
 int WRITE1 (struct i2c_softc*,int ,int) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vf_i2c_dbg (struct i2c_softc*,char*) ;
 int wait_for_icf (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_read(device_t dev, char *buf, int len, int *read, int last, int delay)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 vf_i2c_dbg(sc, "i2c read\n");

 *read = 0;

 mtx_lock(&sc->mutex);

 if (len) {
  if (len == 1)
   WRITE1(sc, I2C_IBCR, IBCR_IBIE | IBCR_MSSL | IBCR_NOACK);

  else
   WRITE1(sc, I2C_IBCR, IBCR_IBIE | IBCR_MSSL);


  READ1(sc, I2C_IBDR);
  DELAY(1000);
 }

 while (*read < len) {
  error = wait_for_icf(sc);
  if (error) {
   mtx_unlock(&sc->mutex);
   return (error);
  }

  if ((*read == len - 2) && last) {

   WRITE1(sc, I2C_IBCR, IBCR_IBIE | IBCR_MSSL | IBCR_NOACK);

  }

  if ((*read == len - 1) && last) {

   WRITE1(sc, I2C_IBCR, IBCR_IBIE | IBCR_NOACK);
  }

  *buf++ = READ1(sc, I2C_IBDR);
  (*read)++;
 }
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
