
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct combiner_softc {int * ih; int * res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int NGRP ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct combiner_softc*,int *) ;
 int combiner_intr ;
 struct combiner_softc* combiner_sc ;
 int combiner_spec ;
 struct combiner_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
combiner_attach(device_t dev)
{
 struct combiner_softc *sc;
 int err;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, combiner_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 combiner_sc = sc;


 for (i = 0; i < NGRP; i++) {
  err = bus_setup_intr(dev, sc->res[1+i], INTR_TYPE_BIO | INTR_MPSAFE, ((void*)0), combiner_intr, sc, &sc->ih[i]);

  if (err) {
   device_printf(dev, "Unable to alloc int resource.\n");
   return (ENXIO);
  }
 }

 return (0);
}
