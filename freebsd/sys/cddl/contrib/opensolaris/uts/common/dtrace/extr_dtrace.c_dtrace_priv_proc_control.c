
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dcr_action; } ;
struct TYPE_8__ {TYPE_1__ dts_cred; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_9__ {int cpuc_dtrace_flags; } ;


 int CPU_DTRACE_UPRIV ;
 int DTRACE_CRA_PROC_CONTROL ;
 TYPE_6__* cpu_core ;
 size_t curcpu ;
 scalar_t__ dtrace_priv_proc_common_nocd () ;
 scalar_t__ dtrace_priv_proc_common_user (TYPE_2__*) ;
 scalar_t__ dtrace_priv_proc_common_zone (TYPE_2__*) ;

__attribute__((used)) static int
dtrace_priv_proc_control(dtrace_state_t *state)
{
 if (state->dts_cred.dcr_action & DTRACE_CRA_PROC_CONTROL)
  return (1);

 if (dtrace_priv_proc_common_zone(state) &&
     dtrace_priv_proc_common_user(state) &&
     dtrace_priv_proc_common_nocd())
  return (1);

 cpu_core[curcpu].cpuc_dtrace_flags |= CPU_DTRACE_UPRIV;

 return (0);
}
