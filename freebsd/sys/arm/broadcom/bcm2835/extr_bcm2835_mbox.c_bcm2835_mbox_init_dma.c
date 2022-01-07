
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int bcm2835_mbox_dma_cb ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,void*,size_t,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void *
bcm2835_mbox_init_dma(device_t dev, size_t len, bus_dma_tag_t *tag,
    bus_dmamap_t *map, bus_addr_t *phys)
{
 void *buf;
 int err;

 err = bus_dma_tag_create(bus_get_dma_tag(dev), 16, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     len, 1, len, 0, ((void*)0), ((void*)0), tag);
 if (err != 0) {
  device_printf(dev, "can't create DMA tag\n");
  return (((void*)0));
 }

 err = bus_dmamem_alloc(*tag, &buf, 0, map);
 if (err != 0) {
  bus_dma_tag_destroy(*tag);
  device_printf(dev, "can't allocate dmamem\n");
  return (((void*)0));
 }

 err = bus_dmamap_load(*tag, *map, buf, len, bcm2835_mbox_dma_cb,
     phys, 0);
 if (err != 0) {
  bus_dmamem_free(*tag, buf, *map);
  bus_dma_tag_destroy(*tag);
  device_printf(dev, "can't load DMA map\n");
  return (((void*)0));
 }

 return (buf);
}
