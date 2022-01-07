
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_IBCR ;
 int I2C_IBFD ;
 int IBCR_MDIS ;


 int IIC_NOERR ;


 int WRITE1 (struct i2c_softc*,int ,int) ;
 struct i2c_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vf_i2c_dbg (struct i2c_softc*,char*) ;

__attribute__((used)) static int
i2c_reset(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
 struct i2c_softc *sc;

 sc = device_get_softc(dev);

 vf_i2c_dbg(sc, "i2c reset\n");

 switch (speed) {
 case 131:
 case 129:
 case 128:
 case 130:
 default:
  break;
 }

 mtx_lock(&sc->mutex);
 WRITE1(sc, I2C_IBCR, IBCR_MDIS);

 DELAY(1000);

 WRITE1(sc, I2C_IBFD, 20);
 WRITE1(sc, I2C_IBCR, 0x0);

 DELAY(1000);

 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
