
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct region {scalar_t__ addr; scalar_t__ size; int flags; } ;


 size_t excnt ;
 struct region* exregions ;
 size_t hwcnt ;
 struct region* hwregions ;
 int panic (char*) ;
 scalar_t__ pm_btop (int ) ;

__attribute__((used)) static size_t
regions_to_avail(vm_paddr_t *avail, uint32_t exflags, size_t maxavail,
    long *pavail, long *prealmem)
{
 size_t acnt, exi, hwi;
 uint64_t end, start, xend, xstart;
 long availmem, totalmem;
 const struct region *exp, *hwp;

 totalmem = 0;
 availmem = 0;
 acnt = 0;
 for (hwi = 0, hwp = hwregions; hwi < hwcnt; ++hwi, ++hwp) {
  start = hwp->addr;
  end = hwp->size + start;
  totalmem += pm_btop((vm_offset_t)(end - start));
  for (exi = 0, exp = exregions; exi < excnt; ++exi, ++exp) {




   if ((exp->flags & exflags) == 0)
    continue;
   xstart = exp->addr;
   xend = exp->size + xstart;




   if (xend <= start)
    continue;




   if (xstart >= end)
    break;




   if ((start >= xstart) && (end <= xend)) {
    start = xend;
    end = xend;
    break;
   }
   if ((xstart > start) && (xend < end)) {
    if (acnt > 0 &&
        avail[acnt - 1] == (vm_paddr_t)start) {
     avail[acnt - 1] = (vm_paddr_t)xstart;
    } else {
     avail[acnt++] = (vm_paddr_t)start;
     avail[acnt++] = (vm_paddr_t)xstart;
    }
    availmem +=
        pm_btop((vm_offset_t)(xstart - start));
    start = xend;
    continue;
   }





   if (xstart <= start)
    start = xend;
   else
    end = xstart;
  }




  if (end > start) {
   if (acnt > 0 && avail[acnt - 1] == (vm_paddr_t)start) {
    avail[acnt - 1] = (vm_paddr_t)end;
   } else {
    avail[acnt++] = (vm_paddr_t)start;
    avail[acnt++] = (vm_paddr_t)end;
   }
   availmem += pm_btop((vm_offset_t)(end - start));
  }
  if (acnt >= maxavail)
   panic("Not enough space in the dump/phys_avail arrays");
 }

 if (pavail != ((void*)0))
  *pavail = availmem;
 if (prealmem != ((void*)0))
  *prealmem = totalmem;
 return (acnt);
}
