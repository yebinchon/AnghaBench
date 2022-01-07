
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct a31dmac_softc {int nchans; int * res; int * ih; TYPE_2__* chans; int dmat; int mtx; } ;
struct a31dmac_config {int nchans; } ;
typedef int * hwreset_t ;
typedef int device_t ;
typedef int * clk_t ;
struct TYPE_6__ {size_t index; int dmamap; int * desc; int * callbackarg; int * callback; struct a31dmac_softc* sc; } ;
struct TYPE_5__ {scalar_t__ ocd_data; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DESC_ALIGN ;
 int DESC_SIZE ;
 int DMA_EN_REG (size_t) ;
 int DMA_IRQ_EN_REG0 ;
 int DMA_IRQ_EN_REG1 ;
 int DMA_IRQ_PEND_REG0 ;
 int DMA_IRQ_PEND_REG1 ;
 int DMA_WRITE (struct a31dmac_softc*,int ,int ) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_SPIN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int a31dmac_dmamap_cb ;
 int a31dmac_intr ;
 int a31dmac_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int *,int,int ,TYPE_2__*,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct a31dmac_softc*,int **) ;
 int bus_teardown_intr (int ,int ,int *) ;
 scalar_t__ clk_enable (int *) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int ,int **) ;
 int clk_release (int *) ;
 int compat_data ;
 struct a31dmac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (TYPE_2__*,int ) ;
 scalar_t__ hwreset_deassert (int *) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int **) ;
 int hwreset_release (int *) ;
 TYPE_2__* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
a31dmac_attach(device_t dev)
{
 struct a31dmac_softc *sc;
 struct a31dmac_config *conf;
 u_int index;
 hwreset_t rst;
 clk_t clk;
 int error;

 sc = device_get_softc(dev);
 conf = (void *)ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 clk = ((void*)0);
 rst = ((void*)0);

 if (bus_alloc_resources(dev, a31dmac_spec, sc->res)) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 mtx_init(&sc->mtx, "a31 dmac", ((void*)0), MTX_SPIN);


 if (clk_get_by_ofw_index(dev, 0, 0, &clk) != 0) {
  device_printf(dev, "cannot get clock\n");
  goto fail;
 }
 if (clk_enable(clk) != 0) {
  device_printf(dev, "cannot enable clock\n");
  goto fail;
 }
 if (hwreset_get_by_ofw_idx(dev, 0, 0, &rst) != 0) {
  device_printf(dev, "cannot get hwreset\n");
  goto fail;
 }
 if (hwreset_deassert(rst) != 0) {
  device_printf(dev, "cannot de-assert reset\n");
  goto fail;
 }


 error = bus_dma_tag_create(
  bus_get_dma_tag(dev),
  DESC_ALIGN, 0,
  BUS_SPACE_MAXADDR_32BIT,
  BUS_SPACE_MAXADDR,
  ((void*)0), ((void*)0),
  DESC_SIZE, 1,
  DESC_SIZE,
  0,
  ((void*)0), ((void*)0),
  &sc->dmat);
 if (error != 0) {
  device_printf(dev, "cannot create dma tag\n");
  goto fail;
 }


 DMA_WRITE(sc, DMA_IRQ_EN_REG0, 0);
 DMA_WRITE(sc, DMA_IRQ_EN_REG1, 0);
 DMA_WRITE(sc, DMA_IRQ_PEND_REG0, ~0);
 DMA_WRITE(sc, DMA_IRQ_PEND_REG1, ~0);


 sc->nchans = conf->nchans;
 sc->chans = malloc(sizeof(*sc->chans) * sc->nchans, M_DEVBUF,
     M_WAITOK | M_ZERO);

 for (index = 0; index < sc->nchans; index++) {
  sc->chans[index].sc = sc;
  sc->chans[index].index = index;
  sc->chans[index].callback = ((void*)0);
  sc->chans[index].callbackarg = ((void*)0);

  error = bus_dmamem_alloc(sc->dmat,
      (void **)&sc->chans[index].desc,
      BUS_DMA_WAITOK | BUS_DMA_COHERENT,
      &sc->chans[index].dmamap);
  if (error != 0) {
   device_printf(dev, "cannot allocate dma mem\n");
   goto fail;
  }
  error = bus_dmamap_load(sc->dmat, sc->chans[index].dmamap,
      sc->chans[index].desc, sizeof(*sc->chans[index].desc),
      a31dmac_dmamap_cb, &sc->chans[index], BUS_DMA_WAITOK);
  if (error != 0) {
   device_printf(dev, "cannot load dma map\n");
   goto fail;
  }

  DMA_WRITE(sc, DMA_EN_REG(index), 0);
 }

 error = bus_setup_intr(dev, sc->res[1], INTR_MPSAFE | INTR_TYPE_MISC,
     ((void*)0), a31dmac_intr, sc, &sc->ih);
 if (error != 0) {
  device_printf(dev, "could not setup interrupt handler\n");
  bus_release_resources(dev, a31dmac_spec, sc->res);
  mtx_destroy(&sc->mtx);
  return (ENXIO);
 }

 OF_device_register_xref(OF_xref_from_node(ofw_bus_get_node(dev)), dev);
 return (0);

fail:
 for (index = 0; index < sc->nchans; index++)
  if (sc->chans[index].desc != ((void*)0)) {
   bus_dmamap_unload(sc->dmat, sc->chans[index].dmamap);
   bus_dmamem_free(sc->dmat, sc->chans[index].desc,
       sc->chans[index].dmamap);
  }
 if (sc->chans != ((void*)0))
  free(sc->chans, M_DEVBUF);
 if (sc->ih != ((void*)0))
  bus_teardown_intr(dev, sc->res[1], sc->ih);
 if (rst != ((void*)0))
  hwreset_release(rst);
 if (clk != ((void*)0))
  clk_release(clk);
 bus_release_resources(dev, a31dmac_spec, sc->res);

 return (ENXIO);
}
