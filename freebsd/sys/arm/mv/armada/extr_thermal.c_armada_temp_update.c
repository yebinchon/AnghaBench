
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_thermal_softc {int temp_upd; int chip_temperature; } ;


 int armada_tsen_get_temp (struct armada_thermal_softc*,int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct armada_thermal_softc*) ;
 int hz ;

__attribute__((used)) static void
armada_temp_update(void *arg)
{
 struct armada_thermal_softc *sc;

 sc = arg;

 (void)armada_tsen_get_temp(sc, &sc->chip_temperature);

 callout_reset(&sc->temp_upd, hz, armada_temp_update, sc);
}
