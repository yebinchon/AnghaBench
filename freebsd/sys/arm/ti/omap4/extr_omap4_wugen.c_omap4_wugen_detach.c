
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_wugen_sc {int * sc_mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct omap4_wugen_sc* device_get_softc (int ) ;

__attribute__((used)) static int
omap4_wugen_detach(device_t dev)
{
 struct omap4_wugen_sc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  sc->sc_mem_res = ((void*)0);
 }
 return (0);
}
