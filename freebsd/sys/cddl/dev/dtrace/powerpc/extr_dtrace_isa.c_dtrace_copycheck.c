
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;


 int ASSERT (int) ;
 int CPU_DTRACE_BADADDR ;
 int DTRACE_CPUFLAG_SET (int ) ;
 scalar_t__ INKERNEL (uintptr_t) ;
 uintptr_t VM_MAXUSER_ADDRESS ;
 TYPE_1__* cpu_core ;
 size_t curcpu ;

__attribute__((used)) static int
dtrace_copycheck(uintptr_t uaddr, uintptr_t kaddr, size_t size)
{
 ASSERT(INKERNEL(kaddr) && kaddr + size >= kaddr);

 if (uaddr + size > VM_MAXUSER_ADDRESS || uaddr + size < uaddr) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
  cpu_core[curcpu].cpuc_dtrace_illval = uaddr;
  return (0);
 }

 return (1);
}
