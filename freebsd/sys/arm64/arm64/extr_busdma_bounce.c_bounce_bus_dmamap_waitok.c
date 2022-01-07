
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct memdesc {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef int bus_dmamap_callback_t ;
typedef int bus_dma_tag_t ;
struct TYPE_3__ {int flags; void* callback_arg; int * callback; int dmat; struct memdesc mem; } ;


 int DMAMAP_COULD_BOUNCE ;

__attribute__((used)) static void
bounce_bus_dmamap_waitok(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct memdesc *mem, bus_dmamap_callback_t *callback, void *callback_arg)
{

 if ((map->flags & DMAMAP_COULD_BOUNCE) == 0)
  return;
 map->mem = *mem;
 map->dmat = dmat;
 map->callback = callback;
 map->callback_arg = callback_arg;
}
