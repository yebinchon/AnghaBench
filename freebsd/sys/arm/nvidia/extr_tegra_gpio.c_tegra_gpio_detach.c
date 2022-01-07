
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_softc {int * mem_res; int ** irq_res; int * isrcs; int ** irq_ih; int mtx; } ;
typedef int device_t ;


 int GPIO_LOCK_DESTROY (struct tegra_gpio_softc*) ;
 int GPIO_NUM_BANKS ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 struct tegra_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int mtx_initialized (int *) ;
 int tegra_gpio_pic_detach (struct tegra_gpio_softc*) ;

__attribute__((used)) static int
tegra_gpio_detach(device_t dev)
{
 struct tegra_gpio_softc *sc;
 int i;

 sc = device_get_softc(dev);

 KASSERT(mtx_initialized(&sc->mtx), ("gpio mutex not initialized"));

 for (i = 0; i < GPIO_NUM_BANKS; i++) {
  if (sc->irq_ih[i] != ((void*)0))
   bus_teardown_intr(dev, sc->irq_res[i], sc->irq_ih[i]);
 }

 if (sc->isrcs != ((void*)0))
  tegra_gpio_pic_detach(sc);

 gpiobus_detach_bus(dev);

 for (i = 0; i < GPIO_NUM_BANKS; i++) {
  if (sc->irq_res[i] != ((void*)0))
   bus_release_resource(dev, SYS_RES_IRQ, 0,
       sc->irq_res[i]);
 }
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 GPIO_LOCK_DESTROY(sc);

 return(0);
}
