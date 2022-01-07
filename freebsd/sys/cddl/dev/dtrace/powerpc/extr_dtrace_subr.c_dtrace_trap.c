
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
struct trapframe {int srr1; int dar; int srr0; } ;
struct TYPE_2__ {int cpuc_dtrace_flags; int cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_NOFAULT ;




 int KASSERT (int,char*) ;
 int PSL_EE ;
 TYPE_1__* cpu_core ;
 size_t curcpu ;
 int sched_pin () ;
 int sched_unpin () ;

int
dtrace_trap(struct trapframe *frame, u_int type)
{
 uint16_t nofault;
 sched_pin();
 nofault = cpu_core[curcpu].cpuc_dtrace_flags & CPU_DTRACE_NOFAULT;
 sched_unpin();
 if (nofault) {
  KASSERT((frame->srr1 & PSL_EE) == 0, ("interrupts enabled"));




  switch (type) {

  case 130:
  case 131:

   cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_BADADDR;
   cpu_core[curcpu].cpuc_dtrace_illval = frame->dar;





   frame->srr0 += sizeof(int);
   return (1);
  case 128:
  case 129:

   cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_BADADDR;
   cpu_core[curcpu].cpuc_dtrace_illval = frame->srr0;





   frame->srr0 += sizeof(int);
   return (1);
  default:

   break;
  }
 }


 return (0);
}
