
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_IBCR ;
 int IBCR_IBIE ;
 int IBCR_MDIS ;
 int IBCR_NOACK ;
 scalar_t__ IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int WRITE1 (struct i2c_softc*,int ,int) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vf_i2c_dbg (struct i2c_softc*,char*) ;
 scalar_t__ wait_for_nibb (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_stop(device_t dev)
{
 struct i2c_softc *sc;

 sc = device_get_softc(dev);

 vf_i2c_dbg(sc, "i2c stop\n");

 mtx_lock(&sc->mutex);

 WRITE1(sc, I2C_IBCR, IBCR_NOACK | IBCR_IBIE);

 DELAY(100);


 if (wait_for_nibb(sc) == IIC_ETIMEOUT) {
  WRITE1(sc, I2C_IBCR, IBCR_MDIS);
  DELAY(1000);
  WRITE1(sc, I2C_IBCR, IBCR_NOACK);
 }
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
