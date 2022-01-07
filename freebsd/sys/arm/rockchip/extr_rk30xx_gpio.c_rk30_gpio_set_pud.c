
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk30_gpio_softc {scalar_t__ sc_bank; } ;




 int RK30_GPIO_LOCK_ASSERT (struct rk30_gpio_softc*) ;
 int RK30_GPIO_NONE ;
 int RK30_GPIO_PULLDOWN ;
 int RK30_GPIO_PULLUP ;
 int rk30_grf_gpio_pud (scalar_t__,int,int) ;
 int rk30_pmu_gpio_pud (int,int) ;

__attribute__((used)) static void
rk30_gpio_set_pud(struct rk30_gpio_softc *sc, uint32_t pin, uint32_t state)
{
 uint32_t pud;


 RK30_GPIO_LOCK_ASSERT(sc);
 switch (state) {
 case 128:
  pud = RK30_GPIO_PULLUP;
  break;
 case 129:
  pud = RK30_GPIO_PULLDOWN;
  break;
 default:
  pud = RK30_GPIO_NONE;
 }




 if (sc->sc_bank == 0 && pin < 12)
  rk30_pmu_gpio_pud(pin, pud);
 else
  rk30_grf_gpio_pud(sc->sc_bank, pin, pud);
}
