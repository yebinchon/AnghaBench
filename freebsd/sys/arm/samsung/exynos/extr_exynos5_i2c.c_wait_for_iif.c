
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int dummy; } ;


 int DELAY (int) ;
 int I2CCON ;
 int IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int IPEND ;
 int READ1 (struct i2c_softc*,int ) ;

__attribute__((used)) static int
wait_for_iif(struct i2c_softc *sc)
{
 int retry;
 int reg;

 retry = 1000;
 while (retry --) {
  reg = READ1(sc, I2CCON);
  if (reg & IPEND) {
   return (IIC_NOERR);
  }
  DELAY(50);
 }

 return (IIC_ETIMEOUT);
}
