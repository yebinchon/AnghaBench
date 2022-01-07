
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dma_tag_t ;
typedef int bus_addr_t ;
struct TYPE_5__ {scalar_t__ maxsegsz; } ;
struct TYPE_4__ {TYPE_2__ common; } ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ bus_dma_run_filter (TYPE_2__*,int) ;

__attribute__((used)) static bool
_bus_dmamap_pagesneeded(bus_dma_tag_t dmat, vm_paddr_t buf, bus_size_t buflen,
    int *pagesneeded)
{
 bus_addr_t curaddr;
 bus_size_t sgsize;
 int count;





 count = 0;
 curaddr = buf;
 while (buflen != 0) {
  sgsize = MIN(buflen, dmat->common.maxsegsz);
  if (bus_dma_run_filter(&dmat->common, curaddr)) {
   sgsize = MIN(sgsize,
       PAGE_SIZE - (curaddr & PAGE_MASK));
   if (pagesneeded == ((void*)0))
    return (1);
   count++;
  }
  curaddr += sgsize;
  buflen -= sgsize;
 }

 if (pagesneeded != ((void*)0))
  *pagesneeded = count;
 return (count != 0);
}
