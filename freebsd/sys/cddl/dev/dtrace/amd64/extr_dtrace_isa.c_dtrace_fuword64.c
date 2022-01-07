
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int DTRACE_CPUFLAG_SET (int ) ;
 uintptr_t VM_MAXUSER_ADDRESS ;
 TYPE_1__* cpu_core ;
 size_t curcpu ;
 int dtrace_fuword64_nocheck (void*) ;

uint64_t
dtrace_fuword64(void *uaddr)
{
 if ((uintptr_t)uaddr > VM_MAXUSER_ADDRESS) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
  cpu_core[curcpu].cpuc_dtrace_illval = (uintptr_t)uaddr;
  return (0);
 }
 return (dtrace_fuword64_nocheck(uaddr));
}
