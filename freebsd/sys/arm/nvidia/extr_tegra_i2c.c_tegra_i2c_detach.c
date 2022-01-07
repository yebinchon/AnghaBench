
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_softc {scalar_t__ iicbus; int * mem_res; int * irq_res; int * irq_h; } ;
typedef int device_t ;


 int LOCK_DESTROY (struct tegra_i2c_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct tegra_i2c_softc* device_get_softc (int ) ;
 int tegra_i2c_hw_init (struct tegra_i2c_softc*) ;

__attribute__((used)) static int
tegra_i2c_detach(device_t dev)
{
 struct tegra_i2c_softc *sc;
 int rv;

 sc = device_get_softc(dev);
 tegra_i2c_hw_init(sc);
 if (sc->irq_h != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_h);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 LOCK_DESTROY(sc);
 if (sc->iicbus)
     rv = device_delete_child(dev, sc->iicbus);
 return (bus_generic_detach(dev));
}
