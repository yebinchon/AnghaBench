
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_dma_tag {void* maxsize; void* alignment; } ;
typedef void* bus_size_t ;
typedef struct bus_dma_tag* bus_dma_tag_t ;
typedef int bus_dma_lock_t ;
typedef int bus_dma_filter_t ;
typedef int bus_addr_t ;


 int ENOMEM ;
 int XXX ;
 struct bus_dma_tag* malloc (int,int ,int ) ;

int
bus_dma_tag_create(bus_dma_tag_t parent, bus_size_t alignment,
     bus_size_t boundary, bus_addr_t lowaddr,
     bus_addr_t highaddr, bus_dma_filter_t *filter,
     void *filterarg, bus_size_t maxsize, int nsegments,
     bus_size_t maxsegsz, int flags, bus_dma_lock_t *lockfunc,
     void *lockfuncarg, bus_dma_tag_t *dmat)
{
 struct bus_dma_tag *ret;

 ret = malloc(sizeof(struct bus_dma_tag), XXX, XXX);
 if (*dmat == ((void*)0))
  return (ENOMEM);
 ret->alignment = alignment;
 ret->maxsize = maxsize;

 *dmat = ret;

 return (0);
}
