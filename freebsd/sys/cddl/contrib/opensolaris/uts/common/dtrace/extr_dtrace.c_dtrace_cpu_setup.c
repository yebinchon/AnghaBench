
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int processorid_t ;
struct TYPE_4__ {int * dts_options; int dts_activity; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_optval_t ;
typedef int cpu_setup_t ;
struct TYPE_5__ {TYPE_1__* dta_state; } ;


 int ASSERT (int ) ;


 size_t DTRACEOPT_BUFRESIZE ;
 int DTRACEOPT_BUFRESIZE_MANUAL ;
 size_t DTRACEOPT_CPU ;
 int DTRACEOPT_UNSET ;
 int DTRACE_ACTIVITY_ACTIVE ;
 int DTRACE_CPUALL ;
 int MUTEX_HELD (int *) ;
 int cpu_lock ;
 TYPE_3__ dtrace_anon ;
 int dtrace_lock ;
 int dtrace_state_buffers (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
dtrace_cpu_setup(cpu_setup_t what, processorid_t cpu)
{
 ASSERT(MUTEX_HELD(&cpu_lock));
 mutex_enter(&dtrace_lock);

 switch (what) {
 case 129: {
  dtrace_state_t *state;
  dtrace_optval_t *opt, rs, c;




  if ((state = dtrace_anon.dta_state) == ((void*)0))
   break;

  if (state->dts_activity != DTRACE_ACTIVITY_ACTIVE)
   break;

  opt = state->dts_options;
  c = opt[DTRACEOPT_CPU];

  if (c != DTRACE_CPUALL && c != DTRACEOPT_UNSET && c != cpu)
   break;







  rs = opt[DTRACEOPT_BUFRESIZE];
  opt[DTRACEOPT_BUFRESIZE] = DTRACEOPT_BUFRESIZE_MANUAL;
  opt[DTRACEOPT_CPU] = (dtrace_optval_t)cpu;

  (void) dtrace_state_buffers(state);

  opt[DTRACEOPT_BUFRESIZE] = rs;
  opt[DTRACEOPT_CPU] = c;

  break;
 }

 case 128:




  break;

 default:
  break;
 }

 mutex_exit(&dtrace_lock);
 return (0);
}
