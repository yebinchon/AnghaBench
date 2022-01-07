
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCM2835_PASSWORD ;
 int BCM2835_PASSWORD_SHIFT ;
 int BCM2835_RSTC_REG ;
 int BCM2835_RSTC_WRCFG_CLR ;
 int BCM2835_RSTC_WRCFG_FULL_RESET ;
 int BCM2835_WDOG_REG ;
 int READ (int *,int ) ;
 int WRITE (int *,int ,int) ;
 int * bcmwd_lsc ;

void
bcmwd_watchdog_reset(void)
{

 if (bcmwd_lsc == ((void*)0))
  return;

 WRITE(bcmwd_lsc, BCM2835_WDOG_REG,
     (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) | 10);

 WRITE(bcmwd_lsc, BCM2835_RSTC_REG,
     (READ(bcmwd_lsc, BCM2835_RSTC_REG) & BCM2835_RSTC_WRCFG_CLR) |
  (BCM2835_PASSWORD << BCM2835_PASSWORD_SHIFT) |
  BCM2835_RSTC_WRCFG_FULL_RESET);
}
