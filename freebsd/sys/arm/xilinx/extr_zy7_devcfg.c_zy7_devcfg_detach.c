
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_devcfg_softc {int * mem_res; int * irq_res; scalar_t__ intrhandle; int * sc_ctl_dev; int * sysctl_tree_top; int sysctl_tree; } ;
typedef int device_t ;


 int DEVCFG_SC_LOCK_DESTROY (struct zy7_devcfg_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int destroy_dev (int *) ;
 struct zy7_devcfg_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int rman_get_rid (int *) ;
 int sysctl_ctx_free (int *) ;
 int * zy7_devcfg_softc_p ;

__attribute__((used)) static int
zy7_devcfg_detach(device_t dev)
{
 struct zy7_devcfg_softc *sc = device_get_softc(dev);

 if (sc->sysctl_tree_top != ((void*)0)) {
  sysctl_ctx_free(&sc->sysctl_tree);
  sc->sysctl_tree_top = ((void*)0);
 }

 if (device_is_attached(dev))
  bus_generic_detach(dev);


 if (sc->sc_ctl_dev != ((void*)0))
  destroy_dev(sc->sc_ctl_dev);


 if (sc->irq_res != ((void*)0)) {
  if (sc->intrhandle)
   bus_teardown_intr(dev, sc->irq_res, sc->intrhandle);
  bus_release_resource(dev, SYS_RES_IRQ,
        rman_get_rid(sc->irq_res), sc->irq_res);
 }


 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
        rman_get_rid(sc->mem_res), sc->mem_res);

 zy7_devcfg_softc_p = ((void*)0);

 DEVCFG_SC_LOCK_DESTROY(sc);

 return (0);
}
