
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_conf {int dummy; } ;
struct sc_pcminfo {scalar_t__ chnum; void* dev; struct sc_info* sc; } ;
struct sc_info {void* dev; int dma_size; scalar_t__ sdma_channel; int ih; int * res; int buf_base; int buf_base_phys; int dma_map; int dma_tag; int bsh; int bst; int * lock; void* conf; scalar_t__ pos; int * sr; } ;
typedef void* device_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_AV ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCMDIR_PLAY ;
 int SD_F_MPSAFE ;
 int SND_STATUSLEN ;
 scalar_t__ bus_alloc_resources (void*,int ,int *) ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (void*) ;
 int bus_setup_intr (void*,int ,int,int *,int ,struct sc_pcminfo*,int *) ;
 int bzero (int ,int) ;
 int device_get_nameunit (void*) ;
 int device_printf (void*,char*) ;
 scalar_t__ find_sdma_controller (struct sc_info*) ;
 int imx_ccm_ssi_configure (void*) ;
 void* malloc (int,int ,int) ;
 int mixer_init (void*,int *,struct sc_pcminfo*) ;
 int pcm_addchan (void*,int ,int *,struct sc_pcminfo*) ;
 int pcm_getflags (void*) ;
 int pcm_register (void*,struct sc_pcminfo*,int,int ) ;
 int pcm_setflags (void*,int) ;
 int pcm_setstatus (void*,char*) ;
 int * rate_map ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ sdma_alloc () ;
 int setup_ssi (struct sc_info*) ;
 int * snd_mtxcreate (int ,char*) ;
 int snprintf (char*,int,char*) ;
 int ssi_dmamap_cb ;
 int ssi_intr ;
 int ssi_spec ;
 int ssichan_class ;
 int ssimixer_class ;

__attribute__((used)) static int
ssi_attach(device_t dev)
{
 char status[SND_STATUSLEN];
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 int err;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->dev = dev;
 sc->sr = &rate_map[0];
 sc->pos = 0;
 sc->conf = malloc(sizeof(struct sdma_conf), M_DEVBUF, M_WAITOK | M_ZERO);

 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "ssi softc");
 if (sc->lock == ((void*)0)) {
  device_printf(dev, "Can't create mtx\n");
  return (ENXIO);
 }

 if (bus_alloc_resources(dev, ssi_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 if (find_sdma_controller(sc)) {
  device_printf(dev, "could not find active SDMA\n");
  return (ENXIO);
 }


 scp = malloc(sizeof(struct sc_pcminfo), M_DEVBUF, M_NOWAIT | M_ZERO);
 scp->sc = sc;
 scp->dev = dev;





 sc->dma_size = 131072;






 err = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     4, sc->dma_size,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->dma_size, 1,
     sc->dma_size, 0,
     ((void*)0), ((void*)0),
     &sc->dma_tag);

 err = bus_dmamem_alloc(sc->dma_tag, (void **)&sc->buf_base,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT, &sc->dma_map);
 if (err) {
  device_printf(dev, "cannot allocate framebuffer\n");
  return (ENXIO);
 }

 err = bus_dmamap_load(sc->dma_tag, sc->dma_map, sc->buf_base,
     sc->dma_size, ssi_dmamap_cb, &sc->buf_base_phys, BUS_DMA_NOWAIT);
 if (err) {
  device_printf(dev, "cannot load DMA map\n");
  return (ENXIO);
 }

 bzero(sc->buf_base, sc->dma_size);


 err = bus_setup_intr(dev, sc->res[1], INTR_MPSAFE | INTR_TYPE_AV,
     ((void*)0), ssi_intr, scp, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }

 pcm_setflags(dev, pcm_getflags(dev) | SD_F_MPSAFE);

 err = pcm_register(dev, scp, 1, 0);
 if (err) {
  device_printf(dev, "Can't register pcm.\n");
  return (ENXIO);
 }

 scp->chnum = 0;
 pcm_addchan(dev, PCMDIR_PLAY, &ssichan_class, scp);
 scp->chnum++;

 snprintf(status, SND_STATUSLEN, "at simplebus");
 pcm_setstatus(dev, status);

 mixer_init(dev, &ssimixer_class, scp);
 setup_ssi(sc);

 imx_ccm_ssi_configure(dev);

 sc->sdma_channel = sdma_alloc();
 if (sc->sdma_channel < 0) {
  device_printf(sc->dev, "Can't get sDMA channel\n");
  return (1);
 }

 return (0);
}
