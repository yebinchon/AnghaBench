
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int tf_r3; int tf_r2; int tf_r1; int tf_r0; scalar_t__ tf_svc_sp; } ;
struct TYPE_5__ {uintptr_t cpu_dtrace_caller; } ;
typedef TYPE_1__ solaris_cpu_t ;
typedef int register_t ;
struct TYPE_6__ {int fbtp_rval; int fbtp_savedval; int fbtp_id; scalar_t__ fbtp_patchpoint; struct TYPE_6__* fbtp_hashnext; } ;
typedef TYPE_2__ fbt_probe_t ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_NOFAULT ;
 int DTRACE_CPUFLAG_CLEAR (int) ;
 int DTRACE_CPUFLAG_SET (int) ;
 int DTRACE_INVOP_SHIFT ;
 size_t FBT_ADDR2NDX (uintptr_t) ;
 size_t curcpu ;
 int dtrace_probe (int ,int ,int ,int ,int ,int ) ;
 TYPE_2__** fbt_probetab ;
 TYPE_1__* solaris_cpu ;

int
fbt_invop(uintptr_t addr, struct trapframe *frame, uintptr_t rval)
{
 solaris_cpu_t *cpu = &solaris_cpu[curcpu];
 fbt_probe_t *fbt = fbt_probetab[FBT_ADDR2NDX(addr)];
 register_t fifthparam;

 for (; fbt != ((void*)0); fbt = fbt->fbtp_hashnext) {
  if ((uintptr_t)fbt->fbtp_patchpoint == addr) {
   cpu->cpu_dtrace_caller = addr;


   DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
   fifthparam = *(register_t *)frame->tf_svc_sp;
   DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);

   dtrace_probe(fbt->fbtp_id, frame->tf_r0,
       frame->tf_r1, frame->tf_r2,
       frame->tf_r3, fifthparam);

   cpu->cpu_dtrace_caller = 0;

   return (fbt->fbtp_rval | (fbt->fbtp_savedval << DTRACE_INVOP_SHIFT));
  }
 }

 return (0);
}
