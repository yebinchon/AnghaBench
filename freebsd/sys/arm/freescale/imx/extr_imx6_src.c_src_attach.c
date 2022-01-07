
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src_softc {int * mem_res; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct src_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int src_detach (int ) ;
 struct src_softc* src_sc ;

__attribute__((used)) static int
src_attach(device_t dev)
{
 struct src_softc *sc;
 int err, rid;

 sc = device_get_softc(dev);
 err = 0;


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }

 src_sc = sc;

 err = 0;

out:

 if (err != 0)
  src_detach(dev);

 return (err);
}
