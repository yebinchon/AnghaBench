
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int I2CMODE_M ;
 int I2CMODE_S ;
 int I2CSTAT ;
 int IIC_NOERR ;
 int READ1 (struct i2c_softc*,int ) ;
 int RXTX_EN ;
 int WRITE1 (struct i2c_softc*,int ,int) ;
 int clear_ipend (struct i2c_softc*) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wait_for_nibb (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_stop(device_t dev)
{
 struct i2c_softc *sc;
 int reg;
 int error;

 sc = device_get_softc(dev);

 DPRINTF("i2c stop\n");

 mtx_lock(&sc->mutex);

 reg = READ1(sc, I2CSTAT);
 int mode = (reg >> I2CMODE_S) & I2CMODE_M;

 reg = (RXTX_EN);
 reg |= (mode << I2CMODE_S);
 WRITE1(sc, I2CSTAT, reg);

 clear_ipend(sc);

 error = wait_for_nibb(sc);
 if (error) {
  DPRINTF("cant i2c stop: nibb error\n");
  return (error);
 }

 mtx_unlock(&sc->mutex);
 return (IIC_NOERR);
}
