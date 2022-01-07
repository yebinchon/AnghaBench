
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int slave; } ;
typedef int device_t ;


 int DELAY (int) ;
 int DEVICE_DEBUGF (struct i2c_softc*,int,char*,int) ;
 int I2CCR_RSTA ;
 int I2CSR_MBB ;
 int I2C_CONTROL_REG ;
 int I2C_DATA_REG ;
 int I2C_STATUS_REG ;
 int IIC_EBUSERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_error_handler (struct i2c_softc*,int) ;
 int i2c_flag_set (struct i2c_softc*,int ,int ) ;
 int i2c_read_reg (struct i2c_softc*,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int wait_for_xfer (struct i2c_softc*,int) ;

__attribute__((used)) static int
i2c_repeated_start(device_t dev, u_char slave, int timeout)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((i2c_read_reg(sc, I2C_STATUS_REG) & I2CSR_MBB) == 0) {
  return (IIC_EBUSERR);
 }





 i2c_flag_set(sc, I2C_CONTROL_REG, I2CCR_RSTA);
 DELAY(1);
 i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
 i2c_write_reg(sc, I2C_DATA_REG, slave);
 sc->slave = slave;
 DEVICE_DEBUGF(sc, 2, "rstart 0x%02x\n", sc->slave);
 error = wait_for_xfer(sc, 1);
 return (i2c_error_handler(sc, error));
}
