
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct versatile_scm_softc {int * sc_mem_res; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct versatile_scm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct versatile_scm_softc* versatile_scm_sc ;

__attribute__((used)) static int
versatile_scm_attach(device_t dev)
{
 struct versatile_scm_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resources\n");
  return (ENXIO);
 }

 versatile_scm_sc = sc;

 return (0);
}
