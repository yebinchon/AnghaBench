
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int slave; } ;
typedef int device_t ;


 int DEBUGF (struct i2c_softc*,int,char*,...) ;
 int DEVICE_DEBUGF (struct i2c_softc*,int,char*,int ,int) ;
 int I2C_DATA_REG ;
 int I2C_STATUS_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_error_handler (struct i2c_softc*,int) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int wait_for_xfer (struct i2c_softc*,int) ;

__attribute__((used)) static int
i2c_write(device_t dev, const char *buf, int len, int *sent, int timeout)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 error = 0;
 *sent = 0;
 DEVICE_DEBUGF(sc, 1, "write  0x%02x len %d: ", sc->slave, len);
 while (*sent < len) {
  DEBUGF(sc, 1, "0x%02x ", *buf);
  i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
  i2c_write_reg(sc, I2C_DATA_REG, *buf++);
  if ((error = wait_for_xfer(sc, 1)) != IIC_NOERR)
   break;
  (*sent)++;
 }
 DEBUGF(sc, 1, "\n");
 return (i2c_error_handler(sc, error));
}
