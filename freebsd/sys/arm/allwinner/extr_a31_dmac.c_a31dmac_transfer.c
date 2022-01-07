
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct a31dmac_softc {int dummy; } ;
struct a31dmac_channel {int index; scalar_t__ physaddr; TYPE_1__* desc; struct a31dmac_softc* sc; } ;
typedef int device_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_2__ {void* next; void* bcnt; void* dstaddr; void* srcaddr; } ;


 size_t DMA_EN ;
 int DMA_EN_REG (int ) ;
 size_t DMA_NULL ;
 int DMA_STAR_ADDR_REG (int ) ;
 int DMA_WRITE (struct a31dmac_softc*,int ,size_t) ;
 void* htole32 (size_t) ;

__attribute__((used)) static int
a31dmac_transfer(device_t dev, void *priv, bus_addr_t src, bus_addr_t dst,
    size_t nbytes)
{
 struct a31dmac_channel *ch;
 struct a31dmac_softc *sc;

 ch = priv;
 sc = ch->sc;

 ch->desc->srcaddr = htole32((uint32_t)src);
 ch->desc->dstaddr = htole32((uint32_t)dst);
 ch->desc->bcnt = htole32(nbytes);
 ch->desc->next = htole32(DMA_NULL);

 DMA_WRITE(sc, DMA_STAR_ADDR_REG(ch->index), (uint32_t)ch->physaddr);
 DMA_WRITE(sc, DMA_EN_REG(ch->index), DMA_EN);

 return (0);
}
