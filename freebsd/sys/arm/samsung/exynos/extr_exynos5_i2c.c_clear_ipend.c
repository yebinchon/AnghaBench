
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int dummy; } ;


 int I2CCON ;
 int IPEND ;
 int READ1 (struct i2c_softc*,int ) ;
 int WRITE1 (struct i2c_softc*,int ,int) ;

__attribute__((used)) static int
clear_ipend(struct i2c_softc *sc)
{
 int reg;

 reg = READ1(sc, I2CCON);
 reg &= ~(IPEND);
 WRITE1(sc, I2CCON, reg);

 return (0);
}
