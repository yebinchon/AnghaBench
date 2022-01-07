
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ti_i2c_softc {int dummy; } ;
typedef int device_t ;


 int IIC_ENOADDR ;
 int TI_I2C_LOCK (struct ti_i2c_softc*) ;
 int TI_I2C_UNLOCK (struct ti_i2c_softc*) ;
 struct ti_i2c_softc* device_get_softc (int ) ;
 int ti_i2c_reset (struct ti_i2c_softc*,int ) ;

__attribute__((used)) static int
ti_i2c_iicbus_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct ti_i2c_softc *sc;
 int err;

 sc = device_get_softc(dev);
 TI_I2C_LOCK(sc);
 err = ti_i2c_reset(sc, speed);
 TI_I2C_UNLOCK(sc);
 if (err)
  return (err);

 return (IIC_ENOADDR);
}
