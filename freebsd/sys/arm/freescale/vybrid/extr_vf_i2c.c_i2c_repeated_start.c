
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_IBAD ;
 int I2C_IBCR ;
 int I2C_IBDR ;
 int I2C_IBSR ;
 int IBCR_IBIE ;
 int IBCR_RSTA ;
 int IBSR_IBB ;
 int IIC_EBUSERR ;
 int IIC_NOERR ;
 int READ1 (struct i2c_softc*,int ) ;
 int WRITE1 (struct i2c_softc*,int ,int) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vf_i2c_dbg (struct i2c_softc*,char*) ;
 int wait_for_iif (struct i2c_softc*) ;

__attribute__((used)) static int
i2c_repeated_start(device_t dev, u_char slave, int timeout)
{
 struct i2c_softc *sc;
 int error;
 int reg;

 sc = device_get_softc(dev);

 vf_i2c_dbg(sc, "i2c repeated start\n");

 mtx_lock(&sc->mutex);

 WRITE1(sc, I2C_IBAD, slave);

 if ((READ1(sc, I2C_IBSR) & IBSR_IBB) == 0) {
  mtx_unlock(&sc->mutex);
  return (IIC_EBUSERR);
 }


 DELAY(10);

 reg = READ1(sc, I2C_IBCR);
 reg |= (IBCR_RSTA | IBCR_IBIE);
 WRITE1(sc, I2C_IBCR, reg);

 DELAY(10);


 WRITE1(sc, I2C_IBDR, slave);

 error = wait_for_iif(sc);

 mtx_unlock(&sc->mutex);

 if (error)
  return (error);

 return (IIC_NOERR);
}
