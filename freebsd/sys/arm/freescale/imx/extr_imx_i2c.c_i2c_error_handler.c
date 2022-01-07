
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int dummy; } ;


 int I2CCR_MEN ;
 int I2C_CONTROL_REG ;
 int I2C_STATUS_REG ;
 int i2c_write_reg (struct i2c_softc*,int ,int ) ;
 int wait_for_busbusy (struct i2c_softc*,int) ;

__attribute__((used)) static int
i2c_error_handler(struct i2c_softc *sc, int error)
{

 if (error != 0) {
  i2c_write_reg(sc, I2C_STATUS_REG, 0);
  i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN);
  wait_for_busbusy(sc, 0);
  i2c_write_reg(sc, I2C_CONTROL_REG, 0);
 }
 return (error);
}
