
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm32_dma_range {scalar_t__ dr_sysbase; scalar_t__ dr_len; } ;
typedef scalar_t__ bus_addr_t ;


 scalar_t__ round_page (scalar_t__) ;

__attribute__((used)) static __inline struct arm32_dma_range *
_bus_dma_inrange(struct arm32_dma_range *ranges, int nranges,
    bus_addr_t curaddr)
{
 struct arm32_dma_range *dr;
 int i;

 for (i = 0, dr = ranges; i < nranges; i++, dr++) {
  if (curaddr >= dr->dr_sysbase &&
      round_page(curaddr) <= (dr->dr_sysbase + dr->dr_len))
   return (dr);
 }

 return (((void*)0));
}
