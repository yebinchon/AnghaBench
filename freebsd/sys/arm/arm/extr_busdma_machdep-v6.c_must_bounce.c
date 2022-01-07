
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_5__ {scalar_t__ lowaddr; scalar_t__ highaddr; scalar_t__ (* filter ) (int ,scalar_t__) ;struct TYPE_5__* parent; int filterarg; } ;


 scalar_t__ alignment_bounce (TYPE_1__*,scalar_t__) ;
 scalar_t__ cacheline_bounce (int ,scalar_t__,int ) ;
 scalar_t__ exclusion_bounce (TYPE_1__*) ;
 scalar_t__ stub1 (int ,scalar_t__) ;

__attribute__((used)) static int
must_bounce(bus_dma_tag_t dmat, bus_dmamap_t map, bus_addr_t paddr,
    bus_size_t size)
{

 if (cacheline_bounce(map, paddr, size))
  return (1);





 if (alignment_bounce(dmat, paddr))
  return (1);
 while (dmat != ((void*)0) && exclusion_bounce(dmat)) {
  if ((paddr >= dmat->lowaddr && paddr <= dmat->highaddr) &&
      (dmat->filter == ((void*)0) ||
      dmat->filter(dmat->filterarg, paddr) != 0))
   return (1);
  dmat = dmat->parent;
 }

 return (0);
}
