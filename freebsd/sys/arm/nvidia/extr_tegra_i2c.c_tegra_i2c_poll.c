
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_softc {scalar_t__ done; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int LOCK (struct tegra_i2c_softc*) ;
 int UNLOCK (struct tegra_i2c_softc*) ;
 int tegra_i2c_intr (struct tegra_i2c_softc*) ;

__attribute__((used)) static int
tegra_i2c_poll(struct tegra_i2c_softc *sc)
{
 int timeout;

 for(timeout = 10000; timeout > 0; timeout--) {
  UNLOCK(sc);
  tegra_i2c_intr(sc);
  LOCK(sc);
  if (sc->done != 0)
    break;
  DELAY(1);
 }
 if (timeout <= 0)
  return (ETIMEDOUT);
 return (0);
}
