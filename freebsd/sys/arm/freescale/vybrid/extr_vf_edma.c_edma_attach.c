
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int device_id; int err_ih; int * res; int tc_ih; void* bsh_tcd; void* bst_tcd; void* bsh; void* bst; int channel_free; int channel_configure; int dma_request; int dma_setup; int dma_stop; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_getproplen (int,char*) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct edma_softc*,int *) ;
 int channel_configure ;
 int channel_free ;
 struct edma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int dma_request ;
 int dma_setup ;
 int dma_stop ;
 int edma_err_intr ;
 int edma_spec ;
 int edma_transfer_complete_intr ;
 int ofw_bus_get_node (int ) ;
 void* rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;

__attribute__((used)) static int
edma_attach(device_t dev)
{
 struct edma_softc *sc;
 phandle_t node;
 int dts_value;
 int len;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if ((node = ofw_bus_get_node(sc->dev)) == -1)
  return (ENXIO);

 if ((len = OF_getproplen(node, "device-id")) <= 0)
  return (ENXIO);

 OF_getencprop(node, "device-id", &dts_value, len);
 sc->device_id = dts_value;

 sc->dma_stop = dma_stop;
 sc->dma_setup = dma_setup;
 sc->dma_request = dma_request;
 sc->channel_configure = channel_configure;
 sc->channel_free = channel_free;

 if (bus_alloc_resources(dev, edma_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);
 sc->bst_tcd = rman_get_bustag(sc->res[1]);
 sc->bsh_tcd = rman_get_bushandle(sc->res[1]);


 if (bus_setup_intr(dev, sc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
  ((void*)0), edma_transfer_complete_intr, sc, &sc->tc_ih)) {
  device_printf(dev, "Unable to alloc DMA intr resource.\n");
  return (ENXIO);
 }

 if (bus_setup_intr(dev, sc->res[3], INTR_TYPE_BIO | INTR_MPSAFE,
  ((void*)0), edma_err_intr, sc, &sc->err_ih)) {
  device_printf(dev, "Unable to alloc DMA Err intr resource.\n");
  return (ENXIO);
 }

 return (0);
}
