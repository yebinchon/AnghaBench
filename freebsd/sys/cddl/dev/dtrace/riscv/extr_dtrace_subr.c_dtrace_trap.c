
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int tf_sepc; } ;
struct TYPE_2__ {int cpuc_dtrace_flags; int cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_NOFAULT ;



 TYPE_1__* cpu_core ;
 size_t curcpu ;

int
dtrace_trap(struct trapframe *frame, u_int type)
{
 if ((cpu_core[curcpu].cpuc_dtrace_flags & CPU_DTRACE_NOFAULT) != 0) {




  switch (type) {
  case 129:
  case 128:
  case 130:

   cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_BADADDR;
   cpu_core[curcpu].cpuc_dtrace_illval = 0;





   frame->tf_sepc += 4;

   return (1);
  default:

   break;
  }
 }


 return (0);
}
