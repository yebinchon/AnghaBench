
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aw_mmc_softc {int aw_dma_map_err; int aw_dma_buf_map; int aw_dma_buf_tag; TYPE_1__* aw_mmc_conf; int aw_dev; int aw_dma_desc; int aw_dma_map; int aw_dma_tag; } ;
struct TYPE_2__ {int dma_xferlen; } ;


 int AW_MMC_DMA_ALIGN ;
 int AW_MMC_DMA_DESC_SIZE ;
 int AW_MMC_DMA_SEGS ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int aw_dma_desc_cb ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct aw_mmc_softc*,int ) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bus_get_dma_tag (int ) ;

__attribute__((used)) static int
aw_mmc_setup_dma(struct aw_mmc_softc *sc)
{
 int error;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->aw_dev),
     AW_MMC_DMA_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AW_MMC_DMA_DESC_SIZE, 1,
     AW_MMC_DMA_DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->aw_dma_tag);
 if (error)
  return (error);

 error = bus_dmamem_alloc(sc->aw_dma_tag, &sc->aw_dma_desc,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &sc->aw_dma_map);
 if (error)
  return (error);

 error = bus_dmamap_load(sc->aw_dma_tag,
     sc->aw_dma_map,
     sc->aw_dma_desc, AW_MMC_DMA_DESC_SIZE,
     aw_dma_desc_cb, sc, 0);
 if (error)
  return (error);
 if (sc->aw_dma_map_err)
  return (sc->aw_dma_map_err);


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->aw_dev),
     AW_MMC_DMA_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->aw_mmc_conf->dma_xferlen *
     AW_MMC_DMA_SEGS, AW_MMC_DMA_SEGS,
     sc->aw_mmc_conf->dma_xferlen,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->aw_dma_buf_tag);
 if (error)
  return (error);
 error = bus_dmamap_create(sc->aw_dma_buf_tag, 0,
     &sc->aw_dma_buf_map);
 if (error)
  return (error);

 return (0);
}
