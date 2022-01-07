
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_dma_tag_common {int lowaddr; int highaddr; int alignment; scalar_t__ (* filter ) (int ,int) ;struct bus_dma_tag_common* parent; int filterarg; } ;
typedef int bus_addr_t ;


 scalar_t__ stub1 (int ,int) ;

int
bus_dma_run_filter(struct bus_dma_tag_common *tc, bus_addr_t paddr)
{
 int retval;

 retval = 0;
 do {
  if (((paddr > tc->lowaddr && paddr <= tc->highaddr) ||
      ((paddr & (tc->alignment - 1)) != 0)) &&
      (tc->filter == ((void*)0) ||
      (*tc->filter)(tc->filterarg, paddr) != 0))
   retval = 1;

  tc = tc->parent;
 } while (retval == 0 && tc != ((void*)0));
 return (retval);
}
