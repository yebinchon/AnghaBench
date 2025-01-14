
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ uint32_t ;
struct region {scalar_t__ addr; scalar_t__ size; scalar_t__ flags; } ;


 int bcopy (struct region*,struct region*,int) ;

__attribute__((used)) static size_t
insert_region(struct region *regions, size_t rcnt, vm_paddr_t addr,
    vm_size_t size, uint32_t flags)
{
 size_t i;
 struct region *ep, *rp;

 ep = regions + rcnt;
 for (i = 0, rp = regions; i < rcnt; ++i, ++rp) {
  if (rp->addr == addr && rp->size == size)
   return (rcnt);
  if (flags == rp->flags) {
   if (addr + size == rp->addr) {
    rp->addr = addr;
    rp->size += size;
    return (rcnt);
   } else if (rp->addr + rp->size == addr) {
    rp->size += size;
    return (rcnt);
   }
  }
  if (addr < rp->addr) {
   bcopy(rp, rp + 1, (ep - rp) * sizeof(*rp));
   break;
  }
 }
 rp->addr = addr;
 rp->size = size;
 rp->flags = flags;
 rcnt++;

 return (rcnt);
}
