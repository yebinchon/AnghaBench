
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_slcr_softc {int * mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int ZSLCR_LOCK_DESTROY (struct zy7_slcr_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct zy7_slcr_softc* device_get_softc (int ) ;
 int rman_get_rid (int *) ;
 int * zy7_slcr_softc_p ;
 int * zynq7_cpu_reset ;

__attribute__((used)) static int
zy7_slcr_detach(device_t dev)
{
 struct zy7_slcr_softc *sc = device_get_softc(dev);

 bus_generic_detach(dev);


 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
        rman_get_rid(sc->mem_res), sc->mem_res);

 zy7_slcr_softc_p = ((void*)0);
 zynq7_cpu_reset = ((void*)0);

 ZSLCR_LOCK_DESTROY(sc);

 return (0);
}
