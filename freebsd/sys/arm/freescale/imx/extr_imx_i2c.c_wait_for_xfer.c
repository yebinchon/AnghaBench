
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int byte_time_sbt; } ;


 int DELAY (int) ;
 int I2CSR_MAL ;
 int I2CSR_MIF ;
 int I2CSR_RXAK ;
 int I2C_STATUS_REG ;
 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int i2c_read_reg (struct i2c_softc*,int ) ;
 int pause_sbt (char*,int,int,int ) ;

__attribute__((used)) static int
wait_for_xfer(struct i2c_softc *sc, int checkack)
{
 int retry, sr;
 pause_sbt("imxi2c", sc->byte_time_sbt, sc->byte_time_sbt / 20, 0);

 retry = 10000;
 while (retry --) {
  sr = i2c_read_reg(sc, I2C_STATUS_REG);
  if (sr & I2CSR_MIF) {
                        if (sr & I2CSR_MAL)
    return (IIC_EBUSERR);
   else if (checkack && (sr & I2CSR_RXAK))
    return (IIC_ENOACK);
   else
    return (IIC_NOERR);
  }
  DELAY(1);
 }
 return (IIC_ETIMEOUT);
}
