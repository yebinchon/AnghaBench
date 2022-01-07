
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_softc {int core_freq; } ;


 int I2C_CLK_DIVISOR ;
 int I2C_CLK_DIVISOR_HSMODE_SHIFT ;
 int I2C_CLK_DIVISOR_STD_FAST_MODE_SHIFT ;
 int WR4 (struct tegra_i2c_softc*,int ,int) ;

__attribute__((used)) static void
tegra_i2c_setup_clk(struct tegra_i2c_softc *sc, int clk_freq)
{
 int div;

 div = ((sc->core_freq / clk_freq) / 10) - 1;
 if ((sc->core_freq / (10 * (div + 1))) > clk_freq)
  div++;
 if (div > 65535)
  div = 65535;
 WR4(sc, I2C_CLK_DIVISOR,
     (1 << I2C_CLK_DIVISOR_HSMODE_SHIFT) |
     (div << I2C_CLK_DIVISOR_STD_FAST_MODE_SHIFT));
}
