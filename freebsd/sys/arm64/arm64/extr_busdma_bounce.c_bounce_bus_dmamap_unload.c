
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bounce_page {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_3__ {scalar_t__ sync_count; int bpages; } ;


 struct bounce_page* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free_bounce_page (int ,struct bounce_page*) ;
 int links ;

__attribute__((used)) static void
bounce_bus_dmamap_unload(bus_dma_tag_t dmat, bus_dmamap_t map)
{
 struct bounce_page *bpage;

 while ((bpage = STAILQ_FIRST(&map->bpages)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&map->bpages, links);
  free_bounce_page(dmat, bpage);
 }

 map->sync_count = 0;
}
