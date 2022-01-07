
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {uintptr_t alignment; scalar_t__ maxsize; } ;


 int ENOMEM ;
 int XXX ;
 void* malloc (scalar_t__,int ,int ) ;

int
bus_dmamem_alloc(bus_dma_tag_t dmat, void** vaddr, int flags,
    bus_dmamap_t *mapp)
{
 void *addr;

 addr = malloc(dmat->maxsize + dmat->alignment, XXX, XXX);
 if (addr == ((void*)0))
  return (ENOMEM);

 *mapp = addr;
 addr = (void*)(((uintptr_t)addr + dmat->alignment - 1) & ~(dmat->alignment - 1));

 *vaddr = addr;
 return (0);
}
