
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void msg_set_power_state ;
struct bcm_mbox_softc {int property_chan_lock; } ;
struct bcm2835_mbox_hdr {int dummy; } ;
typedef int * device_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;


 int BCM2835_MBOX_CHAN_PROP ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOMEM ;
 int ENXIO ;
 int MBOX_READ (int *,int ,int *) ;
 int MBOX_WRITE (int *,int ,int ) ;
 int bcm2835_mbox_err (int *,scalar_t__,int ,struct bcm2835_mbox_hdr*,size_t) ;
 void* bcm2835_mbox_init_dma (int *,size_t,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 struct bcm_mbox_softc* device_get_softc (int *) ;
 int memcpy (void*,void*,size_t) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
bcm2835_mbox_property(void *msg, size_t msg_size)
{
 struct bcm_mbox_softc *sc;
 struct msg_set_power_state *buf;
 bus_dma_tag_t msg_tag;
 bus_dmamap_t msg_map;
 bus_addr_t msg_phys;
 uint32_t reg;
 device_t mbox;
 int err;


 mbox = devclass_get_device(devclass_find("mbox"), 0);
 if (mbox == ((void*)0))
  return (ENXIO);

 sc = device_get_softc(mbox);
 sx_xlock(&sc->property_chan_lock);


 buf = bcm2835_mbox_init_dma(mbox, msg_size, &msg_tag, &msg_map,
     &msg_phys);
 if (buf == ((void*)0)) {
  err = ENOMEM;
  goto out;
 }

 memcpy(buf, msg, msg_size);

 bus_dmamap_sync(msg_tag, msg_map,
     BUS_DMASYNC_PREWRITE);

 MBOX_WRITE(mbox, BCM2835_MBOX_CHAN_PROP, (uint32_t)msg_phys);
 MBOX_READ(mbox, BCM2835_MBOX_CHAN_PROP, &reg);

 bus_dmamap_sync(msg_tag, msg_map,
     BUS_DMASYNC_PREREAD);

 memcpy(msg, buf, msg_size);

 err = bcm2835_mbox_err(mbox, msg_phys, reg,
     (struct bcm2835_mbox_hdr *)msg, msg_size);

 bus_dmamap_unload(msg_tag, msg_map);
 bus_dmamem_free(msg_tag, buf, msg_map);
 bus_dma_tag_destroy(msg_tag);
out:
 sx_xunlock(&sc->property_chan_lock);
 return (err);
}
