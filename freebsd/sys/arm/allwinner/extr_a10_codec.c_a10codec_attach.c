
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct gpiobus_pin {int dummy; } ;
struct a10codec_info {int dmasize; int lock; int res; TYPE_1__* cfg; int dmat; int dev; } ;
typedef int phandle_t ;
typedef int hwreset_t ;
typedef int device_t ;
typedef int clk_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;
struct TYPE_3__ {int mixer_class; } ;


 int AC_DAC_DPC (struct a10codec_info*) ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CLK_SET_ROUND_DOWN ;
 int CODEC_READ (struct a10codec_info*,int ) ;
 int CODEC_WRITE (struct a10codec_info*,int ,int ) ;
 int DAC_DPC_EN_DA ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int SD_F_MPSAFE ;
 int SND_STATUSLEN ;
 int a10codec_chan_class ;
 int a10codec_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_set_freq (int ,int,int ) ;
 int compat_data ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct a10codec_info*,int ) ;
 scalar_t__ gpio_pin_get_by_ofw_property (int ,int ,char*,struct gpiobus_pin**) ;
 int gpio_pin_set_active (struct gpiobus_pin*,int) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int *) ;
 struct a10codec_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int ,struct a10codec_info*) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 TYPE_2__* ofw_bus_search_compatible (int ,int ) ;
 int pcm_addchan (int ,int ,int *,struct a10codec_info*) ;
 int pcm_getflags (int ) ;
 scalar_t__ pcm_register (int ,struct a10codec_info*,int,int) ;
 int pcm_setflags (int ,int) ;
 int pcm_setstatus (int ,char*) ;
 int snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
a10codec_attach(device_t dev)
{
 struct a10codec_info *sc;
 char status[SND_STATUSLEN];
 struct gpiobus_pin *pa_pin;
 phandle_t node;
 clk_t clk_bus, clk_codec;
 hwreset_t rst;
 uint32_t val;
 int error;

 node = ofw_bus_get_node(dev);

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->cfg = (void *)ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 sc->dev = dev;
 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "a10codec softc");

 if (bus_alloc_resources(dev, a10codec_spec, sc->res)) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
 }

 sc->dmasize = 131072;
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


 if (clk_get_by_ofw_name(dev, 0, "apb", &clk_bus) != 0 &&
     clk_get_by_ofw_name(dev, 0, "ahb", &clk_bus) != 0) {
  device_printf(dev, "cannot find bus clock\n");
  goto fail;
 }
 if (clk_get_by_ofw_name(dev, 0, "codec", &clk_codec) != 0) {
  device_printf(dev, "cannot find codec clock\n");
  goto fail;
 }


 if (clk_enable(clk_bus) != 0) {
  device_printf(dev, "cannot enable bus clock\n");
  goto fail;
 }
 error = clk_set_freq(clk_codec, 24576000, CLK_SET_ROUND_DOWN);
 if (error != 0) {
  device_printf(dev, "cannot set codec clock frequency\n");
  goto fail;
 }

 error = clk_enable(clk_codec);
 if (error != 0) {
  device_printf(dev, "cannot enable codec clock\n");
  goto fail;
 }


 if (hwreset_get_by_ofw_idx(dev, 0, 0, &rst) == 0) {
  error = hwreset_deassert(rst);
  if (error != 0) {
   device_printf(dev, "cannot de-assert reset\n");
   goto fail;
  }
 }


 val = CODEC_READ(sc, AC_DAC_DPC(sc));
 val |= DAC_DPC_EN_DA;
 CODEC_WRITE(sc, AC_DAC_DPC(sc), val);

 if (mixer_init(dev, sc->cfg->mixer_class, sc)) {
  device_printf(dev, "mixer_init failed\n");
  goto fail;
 }


 if (gpio_pin_get_by_ofw_property(dev, node, "allwinner,pa-gpios",
     &pa_pin) == 0) {
  error = gpio_pin_set_active(pa_pin, 1);
  if (error != 0)
   device_printf(dev, "failed to unmute PA\n");
 }

 pcm_setflags(dev, pcm_getflags(dev) | SD_F_MPSAFE);

 if (pcm_register(dev, sc, 1, 1)) {
  device_printf(dev, "pcm_register failed\n");
  goto fail;
 }

 pcm_addchan(dev, PCMDIR_PLAY, &a10codec_chan_class, sc);
 pcm_addchan(dev, PCMDIR_REC, &a10codec_chan_class, sc);

 snprintf(status, SND_STATUSLEN, "at %s", ofw_bus_get_name(dev));
 pcm_setstatus(dev, status);

 return (0);

fail:
 bus_release_resources(dev, a10codec_spec, sc->res);
 snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);

 return (ENXIO);
}
