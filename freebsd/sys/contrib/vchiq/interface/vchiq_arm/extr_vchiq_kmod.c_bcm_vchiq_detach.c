
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_vchiq_softc {int lock; int mem_res; int irq_res; scalar_t__ intr_hl; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 struct bcm_vchiq_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int vchiq_exit () ;

__attribute__((used)) static int
bcm_vchiq_detach(device_t dev)
{
 struct bcm_vchiq_softc *sc = device_get_softc(dev);

 vchiq_exit();

 if (sc->intr_hl)
                bus_teardown_intr(dev, sc->irq_res, sc->intr_hl);
 bus_release_resource(dev, SYS_RES_IRQ, 0,
  sc->irq_res);
 bus_release_resource(dev, SYS_RES_MEMORY, 0,
  sc->mem_res);

 mtx_destroy(&sc->lock);

 return (0);
}
