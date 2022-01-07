
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct trapframe {scalar_t__ tf_eip; } ;
struct TYPE_2__ {int cpuc_dtrace_flags; int cpuc_dtrace_illval; } ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_ILLOP ;
 int CPU_DTRACE_NOFAULT ;
 int KASSERT (int,char*) ;
 int PSL_I ;


 TYPE_1__* cpu_core ;
 size_t curcpu ;
 scalar_t__ dtrace_instr_size (int *) ;
 int rcr2 () ;
 int read_eflags () ;
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
  KASSERT((read_eflags() & PSL_I) == 0, ("interrupts enabled"));





  switch (type) {

  case 128:

   cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_ILLOP;





   frame->tf_eip += dtrace_instr_size((u_char *) frame->tf_eip);
   return (1);

  case 129:

   cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_BADADDR;
   cpu_core[curcpu].cpuc_dtrace_illval = rcr2();





   frame->tf_eip += dtrace_instr_size((u_char *) frame->tf_eip);
   return (1);
  default:

   break;
  }
 }


 return (0);
}
