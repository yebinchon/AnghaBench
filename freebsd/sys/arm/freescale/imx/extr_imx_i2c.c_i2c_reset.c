
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t u_int ;
typedef int u_char ;
struct i2c_softc {int byte_time_sbt; int iicbus; } ;
typedef int device_t ;
struct TYPE_3__ {size_t divisor; scalar_t__ regcode; } ;


 int DEVICE_DEBUGF (struct i2c_softc*,int,char*) ;
 int I2C_CONTROL_REG ;
 int I2C_FDR_REG ;
 int I2C_STATUS_REG ;
 size_t IICBUS_GET_FREQUENCY (int ,int ) ;
 int SBT_1US ;
 TYPE_1__* clkdiv_table ;
 struct i2c_softc* device_get_softc (int ) ;
 size_t howmany (size_t,size_t) ;
 int i2c_recover_bus (struct i2c_softc*) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 size_t imx_ccm_ipg_hz () ;
 size_t nitems (TYPE_1__*) ;

__attribute__((used)) static int
i2c_reset(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
 struct i2c_softc *sc;
 u_int busfreq, div, i, ipgfreq;

 sc = device_get_softc(dev);

 DEVICE_DEBUGF(sc, 1, "reset\n");





 ipgfreq = imx_ccm_ipg_hz();
 busfreq = IICBUS_GET_FREQUENCY(sc->iicbus, speed);
 div = howmany(ipgfreq, busfreq);
 for (i = 0; i < nitems(clkdiv_table); i++) {
  if (clkdiv_table[i].divisor >= div)
   break;
 }
 busfreq = ipgfreq / clkdiv_table[i].divisor;
 sc->byte_time_sbt = SBT_1US * (9000000 / busfreq);




 i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
 i2c_write_reg(sc, I2C_CONTROL_REG, 0x0);
 i2c_write_reg(sc, I2C_FDR_REG, (uint8_t)clkdiv_table[i].regcode);





 return (i2c_recover_bus(sc));
}
