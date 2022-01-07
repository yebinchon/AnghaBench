
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_thermal_softc {int * ctrl_res; int * stat_res; scalar_t__ chip_temperature; int temp_upd; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int callout_drain (int *) ;
 struct armada_thermal_softc* device_get_softc (int ) ;
 int device_is_attached (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
armada_thermal_detach(device_t dev)
{
 struct armada_thermal_softc *sc;

 sc = device_get_softc(dev);

 if (!device_is_attached(dev))
  return (0);

 callout_drain(&sc->temp_upd);

 sc->chip_temperature = 0;

 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(sc->stat_res), sc->stat_res);
 sc->stat_res = ((void*)0);

 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(sc->ctrl_res), sc->ctrl_res);
 sc->ctrl_res = ((void*)0);

 return (0);
}
