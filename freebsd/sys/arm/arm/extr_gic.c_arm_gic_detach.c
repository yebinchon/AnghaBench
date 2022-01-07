
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_gic_softc {int gic_res; int * gic_irqs; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int arm_gic_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct arm_gic_softc* device_get_softc (int ) ;
 int free (int *,int ) ;

int
arm_gic_detach(device_t dev)
{
 struct arm_gic_softc *sc;

 sc = device_get_softc(dev);

 if (sc->gic_irqs != ((void*)0))
  free(sc->gic_irqs, M_DEVBUF);

 bus_release_resources(dev, arm_gic_spec, sc->gic_res);

 return (0);
}
