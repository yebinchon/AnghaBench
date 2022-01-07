
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int dummy; } ;


 int I2CSTAT ;
 int READ1 (struct i2c_softc*,int ) ;

__attribute__((used)) static int
is_ack(struct i2c_softc *sc)
{
 int stat;

 stat = READ1(sc, I2CSTAT);
 if (!(stat & 1)) {

  return (1);
 }

 return (0);
}
