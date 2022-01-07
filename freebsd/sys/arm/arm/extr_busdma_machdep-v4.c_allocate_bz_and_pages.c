
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bounce_zone {scalar_t__ map_count; int total_bpages; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_8__ {int flags; int maxsize; struct bounce_zone* bounce_zone; } ;
struct TYPE_7__ {int bpages; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int BUS_DMA_MIN_ALLOC_COMP ;
 int ENOMEM ;
 int MAX (int,int) ;
 int MAX_BPAGES ;
 int MIN (int,int) ;
 int STAILQ_INIT (int *) ;
 int alloc_bounce_pages (TYPE_2__*,int) ;
 int alloc_bounce_zone (TYPE_2__*) ;
 int atop (int ) ;

__attribute__((used)) static int
allocate_bz_and_pages(bus_dma_tag_t dmat, bus_dmamap_t map)
{
 int error;






 if (dmat->flags & BUS_DMA_COULD_BOUNCE) {


  struct bounce_zone *bz;
  int maxpages;

  if (dmat->bounce_zone == ((void*)0)) {
   if ((error = alloc_bounce_zone(dmat)) != 0) {
    return (error);
   }
  }
  bz = dmat->bounce_zone;


  STAILQ_INIT(&(map->bpages));





  maxpages = MAX_BPAGES;
  if ((dmat->flags & BUS_DMA_MIN_ALLOC_COMP) == 0
   || (bz->map_count > 0 && bz->total_bpages < maxpages)) {
   int pages;

   pages = MAX(atop(dmat->maxsize), 1);
   pages = MIN(maxpages - bz->total_bpages, pages);
   pages = MAX(pages, 1);
   if (alloc_bounce_pages(dmat, pages) < pages)
    return (ENOMEM);

   if ((dmat->flags & BUS_DMA_MIN_ALLOC_COMP) == 0)
    dmat->flags |= BUS_DMA_MIN_ALLOC_COMP;
  }
  bz->map_count++;
 }
 return (0);
}
