
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_rng_softc {int ticks; int co; int res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int aml8726_rng_harvest ;
 int aml8726_rng_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct aml8726_rng_softc*) ;
 struct aml8726_rng_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;

__attribute__((used)) static int
aml8726_rng_attach(device_t dev)
{
 struct aml8726_rng_softc *sc = device_get_softc(dev);

 sc->dev = dev;

 if (bus_alloc_resources(dev, aml8726_rng_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }


 if (hz > 100)
  sc->ticks = hz / 100;
 else
  sc->ticks = 1;

 callout_init(&sc->co, 1);
 callout_reset(&sc->co, sc->ticks, aml8726_rng_harvest, sc);

 return (0);
}
