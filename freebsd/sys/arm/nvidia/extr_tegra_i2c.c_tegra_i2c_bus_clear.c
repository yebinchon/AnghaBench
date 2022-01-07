
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_i2c_softc {int dev; } ;


 int DELAY (int) ;
 int I2C_BUS_CLEAR_CONFIG ;
 int I2C_BUS_CLEAR_CONFIG_BC_ENABLE ;
 int I2C_BUS_CLEAR_CONFIG_BC_SCLK_THRESHOLD (int) ;
 int I2C_BUS_CLEAR_CONFIG_BC_STOP_COND ;
 int I2C_BUS_CLEAR_CONFIG_BC_TERMINATE ;
 int I2C_BUS_CLEAR_STATUS ;
 int I2C_BUS_CLEAR_STATUS_BC_STATUS ;
 int I2C_CONFIG_LOAD ;
 int I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD ;
 int RD4 (struct tegra_i2c_softc*,int ) ;
 int WR4 (struct tegra_i2c_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
tegra_i2c_bus_clear(struct tegra_i2c_softc *sc)
{
 int timeout;
 uint32_t reg, status;

 WR4(sc, I2C_BUS_CLEAR_CONFIG,
     I2C_BUS_CLEAR_CONFIG_BC_SCLK_THRESHOLD(18) |
     I2C_BUS_CLEAR_CONFIG_BC_STOP_COND |
     I2C_BUS_CLEAR_CONFIG_BC_TERMINATE);

 WR4(sc, I2C_CONFIG_LOAD, I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD);
 for (timeout = 1000; timeout > 0; timeout--) {
  if (RD4(sc, I2C_CONFIG_LOAD) == 0)
   break;
  DELAY(10);
 }
 if (timeout <= 0)
  device_printf(sc->dev, "config load timeouted\n");
 reg = RD4(sc, I2C_BUS_CLEAR_CONFIG);
 reg |= I2C_BUS_CLEAR_CONFIG_BC_ENABLE;
 WR4(sc, I2C_BUS_CLEAR_CONFIG,reg);

 for (timeout = 1000; timeout > 0; timeout--) {
  if ((RD4(sc, I2C_BUS_CLEAR_CONFIG) &
      I2C_BUS_CLEAR_CONFIG_BC_ENABLE) == 0)
   break;
  DELAY(10);
 }
 if (timeout <= 0)
  device_printf(sc->dev, "bus clear timeouted\n");

 status = RD4(sc, I2C_BUS_CLEAR_STATUS);
 if ((status & I2C_BUS_CLEAR_STATUS_BC_STATUS) == 0)
  device_printf(sc->dev, "bus clear failed\n");
}
