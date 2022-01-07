
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_uhh_softc {int * uhh_mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_delete_children (int ) ;
 struct omap_uhh_softc* device_get_softc (int ) ;
 int omap_uhh_fini (struct omap_uhh_softc*) ;

__attribute__((used)) static int
omap_uhh_detach(device_t dev)
{
 struct omap_uhh_softc *isc = device_get_softc(dev);


 device_delete_children(dev);

 if (isc->uhh_mem_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, isc->uhh_mem_res);
  isc->uhh_mem_res = ((void*)0);
 }

 omap_uhh_fini(isc);

 return (0);
}
