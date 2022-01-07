
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct bcmwd_softc {int mtx; int dev; } ;


 int BCM2835_PASSWORD ;
 int BCM2835_PASSWORD_SHIFT ;
 int BCM2835_RSTC_REG ;
 int BCM2835_RSTC_RESET ;
 int BCM2835_RSTC_WRCFG_CLR ;
 int BCM2835_RSTC_WRCFG_FULL_RESET ;
 int BCM2835_WDOG_REG ;
 int BCM2835_WDOG_TIME_MASK ;
 int READ (struct bcmwd_softc*,int ) ;
 int WD_INTERVAL ;
 int WRITE (struct bcmwd_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
bcmwd_watchdog_fn(void *private, u_int cmd, int *error)
{
 struct bcmwd_softc *sc;
 uint64_t sec;
 uint32_t ticks, reg;

 sc = private;
 mtx_lock(&sc->mtx);

 cmd &= WD_INTERVAL;

 if (cmd > 0) {
  sec = ((uint64_t)1 << (cmd & WD_INTERVAL)) / 1000000000;
  if (sec == 0 || sec > 15) {




   device_printf(sc->dev,
       "Can't arm, timeout must be between 1-15 seconds\n");
   WRITE(sc, BCM2835_RSTC_REG,
       (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) |
       BCM2835_RSTC_RESET);
   mtx_unlock(&sc->mtx);
   return;
  }

  ticks = (sec << 16) & BCM2835_WDOG_TIME_MASK;
  reg = (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) | ticks;
  WRITE(sc, BCM2835_WDOG_REG, reg);

  reg = READ(sc, BCM2835_RSTC_REG);
  reg &= BCM2835_RSTC_WRCFG_CLR;
  reg |= BCM2835_RSTC_WRCFG_FULL_RESET;
  reg |= (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT);
  WRITE(sc, BCM2835_RSTC_REG, reg);

  *error = 0;
 }
 else
  WRITE(sc, BCM2835_RSTC_REG,
      (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) |
      BCM2835_RSTC_RESET);

 mtx_unlock(&sc->mtx);
}
