
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_addr_t ;
struct TYPE_8__ {scalar_t__ maxsegsz; int alignment; int boundary; int lowaddr; } ;
struct TYPE_7__ {scalar_t__ pagesneeded; } ;


 int CTR1 (int ,char*,scalar_t__) ;
 int CTR2 (int ,char*,TYPE_1__*,scalar_t__) ;
 int CTR3 (int ,char*,int ,int ,int ) ;
 int KTR_BUSDMA ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ run_filter (TYPE_2__*,int) ;

__attribute__((used)) static void
_bus_dmamap_count_phys(bus_dma_tag_t dmat, bus_dmamap_t map, vm_paddr_t buf,
    bus_size_t buflen, int flags)
{
 bus_addr_t curaddr;
 bus_size_t sgsize;

 if (map->pagesneeded == 0) {
  CTR3(KTR_BUSDMA, "lowaddr= %d, boundary= %d, alignment= %d",
      dmat->lowaddr, dmat->boundary, dmat->alignment);
  CTR2(KTR_BUSDMA, "map= %p, pagesneeded= %d",
      map, map->pagesneeded);




  curaddr = buf;
  while (buflen != 0) {
   sgsize = MIN(buflen, dmat->maxsegsz);
   if (run_filter(dmat, curaddr) != 0) {
    sgsize = MIN(sgsize,
        PAGE_SIZE - (curaddr & PAGE_MASK));
    map->pagesneeded++;
   }
   curaddr += sgsize;
   buflen -= sgsize;
  }
  CTR1(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
 }
}
