
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int slave; } ;
typedef int device_t ;


 int DEVICE_DEBUGF (struct i2c_softc*,int,char*,int ) ;
 int I2CCR_MEN ;
 int I2C_CONTROL_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int ) ;
 int wait_for_busbusy (struct i2c_softc*,int) ;

__attribute__((used)) static int
i2c_stop(device_t dev)
{
 struct i2c_softc *sc;

 sc = device_get_softc(dev);

 i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN);
 wait_for_busbusy(sc, 0);
 i2c_write_reg(sc, I2C_CONTROL_REG, 0);
 DEVICE_DEBUGF(sc, 2, "stop   0x%02x\n", sc->slave);
 return (IIC_NOERR);
}
