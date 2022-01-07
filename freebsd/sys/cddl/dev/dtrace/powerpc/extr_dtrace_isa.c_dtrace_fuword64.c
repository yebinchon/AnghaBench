
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int ret ;
struct TYPE_2__ {uintptr_t cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int DTRACE_CPUFLAG_SET (int ) ;
 scalar_t__ copyin (void const*,void*,int) ;
 TYPE_1__* cpu_core ;
 size_t curcpu ;
 scalar_t__ dtrace_copycheck (uintptr_t,uintptr_t,int) ;

uint64_t
dtrace_fuword64(void *uaddr)
{
 uint64_t ret = 0;

 if (dtrace_copycheck((uintptr_t)uaddr, (uintptr_t)&ret, sizeof(ret))) {
  if (copyin((const void *)uaddr, (void *)&ret, sizeof(ret))) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
   cpu_core[curcpu].cpuc_dtrace_illval = (uintptr_t)uaddr;
  }
 }
 return ret;
}
