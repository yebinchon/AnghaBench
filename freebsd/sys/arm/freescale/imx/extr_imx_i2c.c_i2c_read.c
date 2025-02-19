
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int slave; } ;
typedef int device_t ;


 int DEBUGF (struct i2c_softc*,int,char*,...) ;
 int DEVICE_DEBUGF (struct i2c_softc*,int,char*,int ,int) ;
 int I2CCR_MEN ;
 int I2CCR_MSTA ;
 int I2CCR_TXAK ;
 int I2C_CONTROL_REG ;
 int I2C_DATA_REG ;
 int I2C_STATUS_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_error_handler (struct i2c_softc*,int) ;
 int i2c_read_reg (struct i2c_softc*,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int wait_for_busbusy (struct i2c_softc*,int) ;
 int wait_for_xfer (struct i2c_softc*,int) ;

__attribute__((used)) static int
i2c_read(device_t dev, char *buf, int len, int *read, int last, int delay)
{
 struct i2c_softc *sc;
 int error, reg;

 sc = device_get_softc(dev);
 *read = 0;

 DEVICE_DEBUGF(sc, 1, "read   0x%02x len %d: ", sc->slave, len);
 if (len) {
  if (len == 1)
   i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
       I2CCR_MSTA | I2CCR_TXAK);
  else
   i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
       I2CCR_MSTA);

  i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
  i2c_read_reg(sc, I2C_DATA_REG);
 }

 error = 0;
 *read = 0;
 while (*read < len) {
  if ((error = wait_for_xfer(sc, 0)) != IIC_NOERR)
   break;
  i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
  if (last) {
   if (*read == len - 2) {

    i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
        I2CCR_MSTA | I2CCR_TXAK);
   } else if (*read == len - 1) {

    i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
        I2CCR_TXAK);
    wait_for_busbusy(sc, 0);
   }
  }
  reg = i2c_read_reg(sc, I2C_DATA_REG);
  DEBUGF(sc, 1, "0x%02x ", reg);
  *buf++ = reg;
  (*read)++;
 }
 DEBUGF(sc, 1, "\n");

 return (i2c_error_handler(sc, error));
}
