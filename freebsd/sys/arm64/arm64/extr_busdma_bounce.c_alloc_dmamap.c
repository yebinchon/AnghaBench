
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct sync_list {int dummy; } ;
typedef TYPE_2__* bus_dmamap_t ;
typedef TYPE_3__* bus_dma_tag_t ;
struct TYPE_7__ {int nsegments; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
struct TYPE_8__ {int bpages; } ;


 int M_DEVBUF ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 TYPE_2__* malloc (int,int ,int) ;

__attribute__((used)) static bus_dmamap_t
alloc_dmamap(bus_dma_tag_t dmat, int flags)
{
 u_long mapsize;
 bus_dmamap_t map;

 mapsize = sizeof(*map);
 mapsize += sizeof(struct sync_list) * dmat->common.nsegments;
 map = malloc(mapsize, M_DEVBUF, flags | M_ZERO);
 if (map == ((void*)0))
  return (((void*)0));


 STAILQ_INIT(&map->bpages);

 return (map);
}
