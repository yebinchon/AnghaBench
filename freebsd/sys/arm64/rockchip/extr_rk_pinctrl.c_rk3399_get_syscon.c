
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct syscon {int dummy; } ;
struct rk_pinctrl_softc {struct syscon* grf; struct syscon* pmu; } ;



__attribute__((used)) static struct syscon *
rk3399_get_syscon(struct rk_pinctrl_softc *sc, uint32_t bank)
{
 if (bank < 2)
  return (sc->pmu);

 return (sc->grf);
}
