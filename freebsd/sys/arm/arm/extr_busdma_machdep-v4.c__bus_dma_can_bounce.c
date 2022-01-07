
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__* phys_avail ;

__attribute__((used)) static __inline int
_bus_dma_can_bounce(vm_offset_t lowaddr, vm_offset_t highaddr)
{
 int i;

 if (lowaddr >= BUS_SPACE_MAXADDR)
  return (0);

 for (i = 0; phys_avail[i] && phys_avail[i + 1]; i += 2) {
  if ((lowaddr >= phys_avail[i] && lowaddr <= phys_avail[i + 1])
      || (lowaddr < phys_avail[i] &&
      highaddr > phys_avail[i]))
   return (1);
 }
 return (0);
}
