
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dcr_action; } ;
struct TYPE_6__ {TYPE_1__ dts_cred; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_7__ {int cpuc_dtrace_flags; } ;


 int CPU_DTRACE_KPRIV ;
 int DTRACE_CRA_KERNEL_DESTRUCTIVE ;
 TYPE_4__* cpu_core ;
 size_t curcpu ;

__attribute__((used)) static int
dtrace_priv_kernel_destructive(dtrace_state_t *state)
{
 if (state->dts_cred.dcr_action & DTRACE_CRA_KERNEL_DESTRUCTIVE)
  return (1);

 cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_KPRIV;

 return (0);
}
