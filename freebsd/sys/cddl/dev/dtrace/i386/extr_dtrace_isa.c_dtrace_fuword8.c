
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int DTRACE_CPUFLAG_SET (int ) ;
 TYPE_1__* cpu_core ;
 size_t curcpu ;
 int dtrace_fuword8_nocheck (void*) ;
 uintptr_t kernelbase ;

uint8_t
dtrace_fuword8(void *uaddr)
{
 if ((uintptr_t)uaddr >= kernelbase) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
  cpu_core[curcpu].cpuc_dtrace_illval = (uintptr_t)uaddr;
  return (0);
 }
 return (dtrace_fuword8_nocheck(uaddr));
}
