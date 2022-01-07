
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bounce_zone {int free_bpages; int reserved_bpages; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_6__ {struct bounce_zone* bounce_zone; } ;
struct TYPE_5__ {scalar_t__ pagesneeded; scalar_t__ pagesreserved; } ;


 int MA_OWNED ;
 int MIN (int,scalar_t__) ;
 int bounce_lock ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
reserve_bounce_pages(bus_dma_tag_t dmat, bus_dmamap_t map, int commit)
{
 struct bounce_zone *bz;
 int pages;

 mtx_assert(&bounce_lock, MA_OWNED);
 bz = dmat->bounce_zone;
 pages = MIN(bz->free_bpages, map->pagesneeded - map->pagesreserved);
 if (commit == 0 && map->pagesneeded > (map->pagesreserved + pages))
  return (map->pagesneeded - (map->pagesreserved + pages));
 bz->free_bpages -= pages;
 bz->reserved_bpages += pages;
 map->pagesreserved += pages;
 pages = map->pagesneeded - map->pagesreserved;

 return (pages);
}
