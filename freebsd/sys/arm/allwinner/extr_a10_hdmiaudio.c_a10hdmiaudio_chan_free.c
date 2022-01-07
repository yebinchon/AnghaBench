
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10hdmiaudio_info {int dmat; } ;
struct a10hdmiaudio_chinfo {int dmamap; int dmaaddr; int dmachan; int dmac; struct a10hdmiaudio_info* parent; } ;
typedef int kobj_t ;


 int SUNXI_DMA_FREE (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static int
a10hdmiaudio_chan_free(kobj_t obj, void *data)
{
 struct a10hdmiaudio_chinfo *ch = data;
 struct a10hdmiaudio_info *sc = ch->parent;

 SUNXI_DMA_FREE(ch->dmac, ch->dmachan);
 bus_dmamap_unload(sc->dmat, ch->dmamap);
 bus_dmamem_free(sc->dmat, ch->dmaaddr, ch->dmamap);

 return (0);
}
