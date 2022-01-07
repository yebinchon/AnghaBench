
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tegra_i2c_softc {int iicbus; } ;
typedef int device_t ;


 int IICBUS_GET_FREQUENCY (int ,int ) ;
 int LOCK (struct tegra_i2c_softc*) ;
 int UNLOCK (struct tegra_i2c_softc*) ;
 struct tegra_i2c_softc* device_get_softc (int ) ;
 int tegra_i2c_setup_clk (struct tegra_i2c_softc*,int) ;

__attribute__((used)) static int
tegra_i2c_iicbus_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct tegra_i2c_softc *sc;
 int busfreq;

 sc = device_get_softc(dev);
 busfreq = IICBUS_GET_FREQUENCY(sc->iicbus, speed);
 sc = device_get_softc(dev);
 LOCK(sc);
 tegra_i2c_setup_clk(sc, busfreq);
 UNLOCK(sc);
 return (0);
}
