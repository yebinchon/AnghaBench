
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_pem_softc {int * reg; int mem_rman; int io_rman; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_free_resource (int ,int ,int *) ;
 struct thunder_pem_softc* device_get_softc (int ) ;
 int rman_fini (int *) ;

__attribute__((used)) static void
thunder_pem_release_all(device_t dev)
{
 struct thunder_pem_softc *sc;

 sc = device_get_softc(dev);

 rman_fini(&sc->io_rman);
 rman_fini(&sc->mem_rman);

 if (sc->reg != ((void*)0))
  bus_free_resource(dev, SYS_RES_MEMORY, sc->reg);
}
