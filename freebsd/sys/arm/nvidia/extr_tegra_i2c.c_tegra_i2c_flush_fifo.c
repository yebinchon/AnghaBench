
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_i2c_softc {int dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int I2C_FIFO_CONTROL ;
 int I2C_FIFO_CONTROL_RX_FIFO_FLUSH ;
 int I2C_FIFO_CONTROL_TX_FIFO_FLUSH ;
 int RD4 (struct tegra_i2c_softc*,int ) ;
 int WR4 (struct tegra_i2c_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
tegra_i2c_flush_fifo(struct tegra_i2c_softc *sc)
{
 int timeout;
 uint32_t reg;

 reg = RD4(sc, I2C_FIFO_CONTROL);
 reg |= I2C_FIFO_CONTROL_TX_FIFO_FLUSH | I2C_FIFO_CONTROL_RX_FIFO_FLUSH;
 WR4(sc, I2C_FIFO_CONTROL, reg);

 timeout = 10;
 while (timeout > 0) {
  reg = RD4(sc, I2C_FIFO_CONTROL);
  reg &= I2C_FIFO_CONTROL_TX_FIFO_FLUSH |
      I2C_FIFO_CONTROL_RX_FIFO_FLUSH;
  if (reg == 0)
   break;
  DELAY(10);
 }
 if (timeout <= 0) {
  device_printf(sc->dev, "FIFO flush timedout\n");
  return (ETIMEDOUT);
 }
 return (0);
}
