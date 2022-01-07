
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_ecap_softc {int * sc_mem_res; int sc_mem_rid; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int PWM_LOCK_DESTROY (struct am335x_ecap_softc*) ;
 int PWM_LOCK_INIT (struct am335x_ecap_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct am335x_ecap_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
am335x_ecap_attach(device_t dev)
{
 struct am335x_ecap_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 PWM_LOCK_INIT(sc);

 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "cannot allocate memory resources\n");
  goto fail;
 }

 return (0);

fail:
 PWM_LOCK_DESTROY(sc);
 return (ENXIO);
}
