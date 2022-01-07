
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_thermal_softc {int dummy; } ;


 int aw_thermal_throttle (struct aw_thermal_softc*,int) ;

__attribute__((used)) static void
aw_thermal_cf_task(void *arg, int pending)
{
 struct aw_thermal_softc *sc;

 sc = arg;

 aw_thermal_throttle(sc, 1);
}
