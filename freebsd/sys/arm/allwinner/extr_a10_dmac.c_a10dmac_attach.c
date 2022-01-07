
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct a10dmac_softc {int sc_mtx; int * sc_res; int sc_ih; TYPE_1__* sc_ddma_channels; TYPE_1__* sc_ndma_channels; } ;
typedef int device_t ;
typedef int clk_t ;
struct TYPE_2__ {unsigned int ch_index; int ch_regoff; int * ch_callbackarg; int * ch_callback; int ch_type; struct a10dmac_softc* ch_sc; } ;


 int AWIN_DDMA_CTL_REG ;
 int AWIN_DDMA_REG (unsigned int) ;
 int AWIN_DMA_IRQ_EN_REG ;
 int AWIN_DMA_IRQ_PEND_STA_REG ;
 int AWIN_NDMA_CTL_REG ;
 int AWIN_NDMA_REG (unsigned int) ;
 int CH_DDMA ;
 int CH_NDMA ;
 unsigned int DDMA_CHANNELS ;
 int DMACH_WRITE (TYPE_1__*,int ,int ) ;
 int DMA_WRITE (struct a10dmac_softc*,int ,int ) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_SPIN ;
 unsigned int NDMA_CHANNELS ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int a10dmac_intr ;
 int a10dmac_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct a10dmac_softc*,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 struct a10dmac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
a10dmac_attach(device_t dev)
{
 struct a10dmac_softc *sc;
 unsigned int index;
 clk_t clk;
 int error;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, a10dmac_spec, sc->sc_res)) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 mtx_init(&sc->sc_mtx, "a10 dmac", ((void*)0), MTX_SPIN);


 error = clk_get_by_ofw_index(dev, 0, 0, &clk);
 if (error != 0) {
  device_printf(dev, "cannot get clock\n");
  return (error);
 }
 error = clk_enable(clk);
 if (error != 0) {
  device_printf(dev, "cannot enable clock\n");
  return (error);
 }


 DMA_WRITE(sc, AWIN_DMA_IRQ_EN_REG, 0);
 DMA_WRITE(sc, AWIN_DMA_IRQ_PEND_STA_REG, ~0);


 for (index = 0; index < NDMA_CHANNELS; index++) {
  sc->sc_ndma_channels[index].ch_sc = sc;
  sc->sc_ndma_channels[index].ch_index = index;
  sc->sc_ndma_channels[index].ch_type = CH_NDMA;
  sc->sc_ndma_channels[index].ch_callback = ((void*)0);
  sc->sc_ndma_channels[index].ch_callbackarg = ((void*)0);
  sc->sc_ndma_channels[index].ch_regoff = AWIN_NDMA_REG(index);
  DMACH_WRITE(&sc->sc_ndma_channels[index], AWIN_NDMA_CTL_REG, 0);
 }
 for (index = 0; index < DDMA_CHANNELS; index++) {
  sc->sc_ddma_channels[index].ch_sc = sc;
  sc->sc_ddma_channels[index].ch_index = index;
  sc->sc_ddma_channels[index].ch_type = CH_DDMA;
  sc->sc_ddma_channels[index].ch_callback = ((void*)0);
  sc->sc_ddma_channels[index].ch_callbackarg = ((void*)0);
  sc->sc_ddma_channels[index].ch_regoff = AWIN_DDMA_REG(index);
  DMACH_WRITE(&sc->sc_ddma_channels[index], AWIN_DDMA_CTL_REG, 0);
 }

 error = bus_setup_intr(dev, sc->sc_res[1], INTR_MPSAFE | INTR_TYPE_MISC,
     ((void*)0), a10dmac_intr, sc, &sc->sc_ih);
 if (error != 0) {
  device_printf(dev, "could not setup interrupt handler\n");
  bus_release_resources(dev, a10dmac_spec, sc->sc_res);
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 OF_device_register_xref(OF_xref_from_node(ofw_bus_get_node(dev)), dev);
 return (0);
}
