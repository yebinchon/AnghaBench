
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_spi_softc {scalar_t__ sc_mem_res; scalar_t__ sc_irq_res; scalar_t__ sc_intrhand; int sc_mtx; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct bcm_spi_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
bcm_spi_detach(device_t dev)
{
 struct bcm_spi_softc *sc;

 bus_generic_detach(dev);

 sc = device_get_softc(dev);
 mtx_destroy(&sc->sc_mtx);
 if (sc->sc_intrhand)
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intrhand);
 if (sc->sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (0);
}
