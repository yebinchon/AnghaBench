
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ hrtime_t ;
struct TYPE_7__ {int dtms_present; } ;
typedef TYPE_1__ dtrace_mstate_t ;
struct TYPE_8__ {scalar_t__ cpu_dtrace_chillmark; scalar_t__ cpu_dtrace_chilled; } ;
typedef TYPE_2__ cpu_t ;
struct TYPE_9__ {int cpuc_dtrace_flags; } ;


 TYPE_2__* CPU ;
 int volatile CPU_DTRACE_ILLOP ;
 int DTRACE_MSTATE_TIMESTAMP ;
 TYPE_5__* cpu_core ;
 size_t curcpu ;
 scalar_t__ dtrace_chill_interval ;
 scalar_t__ dtrace_chill_max ;
 scalar_t__ dtrace_destructive_disallow ;
 scalar_t__ dtrace_gethrtime () ;
 TYPE_2__* solaris_cpu ;

__attribute__((used)) static void
dtrace_action_chill(dtrace_mstate_t *mstate, hrtime_t val)
{
 hrtime_t now;
 volatile uint16_t *flags;



 cpu_t *cpu = &solaris_cpu[curcpu];


 if (dtrace_destructive_disallow)
  return;

 flags = (volatile uint16_t *)&cpu_core[curcpu].cpuc_dtrace_flags;

 now = dtrace_gethrtime();

 if (now - cpu->cpu_dtrace_chillmark > dtrace_chill_interval) {



  cpu->cpu_dtrace_chillmark = now;
  cpu->cpu_dtrace_chilled = 0;
 }






 if (cpu->cpu_dtrace_chilled + val > dtrace_chill_max ||
     cpu->cpu_dtrace_chilled + val < cpu->cpu_dtrace_chilled) {
  *flags |= CPU_DTRACE_ILLOP;
  return;
 }

 while (dtrace_gethrtime() - now < val)
  continue;






 mstate->dtms_present &= ~DTRACE_MSTATE_TIMESTAMP;
 cpu->cpu_dtrace_chilled += val;
}
