
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10hdmiaudio_info {int lock; int dmat; int dmasize; int dev; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DMABUF_DEFAULT ;
 int DMABUF_MAX ;
 int DMABUF_MIN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCMDIR_PLAY ;
 int SD_F_MPSAFE ;
 int SD_F_SOFTPCMVOL ;
 int SND_STATUSLEN ;
 int a10hdmiaudio_chan_class ;
 int a10hdmiaudio_mixer_class ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct a10hdmiaudio_info*,int ) ;
 struct a10hdmiaudio_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int *,struct a10hdmiaudio_info*) ;
 char* ofw_bus_get_name (int ) ;
 int pcm_addchan (int ,int ,int *,struct a10hdmiaudio_info*) ;
 int pcm_getbuffersize (int ,int ,int ,int ) ;
 int pcm_getflags (int ) ;
 scalar_t__ pcm_register (int ,struct a10hdmiaudio_info*,int,int ) ;
 int pcm_setflags (int ,int) ;
 int pcm_setstatus (int ,char*) ;
 int snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
a10hdmiaudio_attach(device_t dev)
{
 struct a10hdmiaudio_info *sc;
 char status[SND_STATUSLEN];
 int error;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->dev = dev;
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "a10hdmiaudio softc");

 sc->dmasize = pcm_getbuffersize(dev, DMABUF_MIN,
     DMABUF_DEFAULT, DMABUF_MAX);
 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     4, sc->dmasize,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->dmasize, 1,
     sc->dmasize, 0,
     ((void*)0), ((void*)0),
     &sc->dmat);
 if (error != 0) {
  device_printf(dev, "cannot create DMA tag\n");
  goto fail;
 }

 if (mixer_init(dev, &a10hdmiaudio_mixer_class, sc)) {
  device_printf(dev, "mixer_init failed\n");
  goto fail;
 }

 pcm_setflags(dev, pcm_getflags(dev) | SD_F_MPSAFE);
 pcm_setflags(dev, pcm_getflags(dev) | SD_F_SOFTPCMVOL);

 if (pcm_register(dev, sc, 1, 0)) {
  device_printf(dev, "pcm_register failed\n");
  goto fail;
 }

 pcm_addchan(dev, PCMDIR_PLAY, &a10hdmiaudio_chan_class, sc);

 snprintf(status, SND_STATUSLEN, "at %s", ofw_bus_get_name(dev));
 pcm_setstatus(dev, status);

 return (0);

fail:
 snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);

 return (error);
}
