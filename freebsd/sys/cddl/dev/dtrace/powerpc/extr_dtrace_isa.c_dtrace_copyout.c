
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int DTRACE_CPUFLAG_SET (int ) ;
 scalar_t__ copyout (void const*,void*,size_t) ;
 TYPE_1__* cpu_core ;
 size_t curcpu ;
 scalar_t__ dtrace_copycheck (uintptr_t,uintptr_t,size_t) ;

void
dtrace_copyout(uintptr_t kaddr, uintptr_t uaddr, size_t size,
    volatile uint16_t *flags)
{
 if (dtrace_copycheck(uaddr, kaddr, size)) {
  if (copyout((const void *)kaddr, (void *)uaddr, size)) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
   cpu_core[curcpu].cpuc_dtrace_illval = (uintptr_t)uaddr;
  }
 }
}
