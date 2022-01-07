
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int dummy; } ;


 int DELAY (int) ;
 int I2C_IBSR ;
 int IBSR_IBIF ;
 int IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int READ1 (struct i2c_softc*,int ) ;
 int WRITE1 (struct i2c_softc*,int ,int) ;

__attribute__((used)) static int
wait_for_iif(struct i2c_softc *sc)
{
 int retry;

 retry = 1000;
 while (retry --) {
  if (READ1(sc, I2C_IBSR) & IBSR_IBIF) {
   WRITE1(sc, I2C_IBSR, IBSR_IBIF);
   return (IIC_NOERR);
  }
  DELAY(10);
 }

 return (IIC_ETIMEOUT);
}
