
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int dummy; } ;
typedef int device_t ;


 int I2C_CONTROL_REG ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_recover_bus (struct i2c_softc*) ;
 int i2c_start_ll (int ,int ,int) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;

__attribute__((used)) static int
i2c_start(device_t dev, u_char slave, int timeout)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);
 if ((error = i2c_start_ll(dev, slave, timeout)) != 0) {
  i2c_write_reg(sc, I2C_CONTROL_REG, 0x0);
  if ((error = i2c_recover_bus(sc)) != 0)
   return (error);
  error = i2c_start_ll(dev, slave, timeout);
 }
 return (error);
}
