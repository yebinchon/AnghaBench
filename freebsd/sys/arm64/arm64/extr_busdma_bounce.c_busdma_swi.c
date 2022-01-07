
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bus_dmamap {int callback_arg; int callback; int mem; TYPE_2__* dmat; } ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_4__ {int lockfuncarg; int (* lockfunc ) (int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ common; } ;


 int BUS_DMA_LOCK ;
 int BUS_DMA_UNLOCK ;
 int BUS_DMA_WAITOK ;
 struct bus_dmamap* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bounce_lock ;
 int bounce_map_callbacklist ;
 int bus_dmamap_load_mem (TYPE_2__*,struct bus_dmamap*,int *,int ,int ,int ) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

void
busdma_swi(void)
{
 bus_dma_tag_t dmat;
 struct bus_dmamap *map;

 mtx_lock(&bounce_lock);
 while ((map = STAILQ_FIRST(&bounce_map_callbacklist)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&bounce_map_callbacklist, links);
  mtx_unlock(&bounce_lock);
  dmat = map->dmat;
  (dmat->common.lockfunc)(dmat->common.lockfuncarg, BUS_DMA_LOCK);
  bus_dmamap_load_mem(map->dmat, map, &map->mem,
      map->callback, map->callback_arg, BUS_DMA_WAITOK);
  (dmat->common.lockfunc)(dmat->common.lockfuncarg,
      BUS_DMA_UNLOCK);
  mtx_lock(&bounce_lock);
 }
 mtx_unlock(&bounce_lock);
}
