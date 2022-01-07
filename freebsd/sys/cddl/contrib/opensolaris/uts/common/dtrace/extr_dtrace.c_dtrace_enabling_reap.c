
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hrtime_t ;
struct TYPE_8__ {scalar_t__ dts_speculates; int * dts_aggbuffer; int * dts_buffer; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_9__ {int dtpv_defunct; } ;
typedef TYPE_2__ dtrace_provider_t ;
struct TYPE_10__ {TYPE_4__* dtpr_ecb; TYPE_2__* dtpr_provider; } ;
typedef TYPE_3__ dtrace_probe_t ;
struct TYPE_11__ {TYPE_1__* dte_state; } ;
typedef TYPE_4__ dtrace_ecb_t ;
typedef int dtrace_buffer_t ;


 int ASSERT (int) ;
 int cpu_lock ;
 int dtrace_buffer_consumed (int *,int ) ;
 int dtrace_ecb_destroy (TYPE_4__*) ;
 int dtrace_ecb_disable (TYPE_4__*) ;
 int dtrace_lock ;
 int dtrace_nprobes ;
 TYPE_3__** dtrace_probes ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
dtrace_enabling_reap(void)
{
 dtrace_provider_t *prov;
 dtrace_probe_t *probe;
 dtrace_ecb_t *ecb;
 hrtime_t when;
 int i;

 mutex_enter(&cpu_lock);
 mutex_enter(&dtrace_lock);

 for (i = 0; i < dtrace_nprobes; i++) {
  if ((probe = dtrace_probes[i]) == ((void*)0))
   continue;

  if (probe->dtpr_ecb == ((void*)0))
   continue;

  prov = probe->dtpr_provider;

  if ((when = prov->dtpv_defunct) == 0)
   continue;
  while ((ecb = probe->dtpr_ecb) != ((void*)0)) {
   dtrace_state_t *state = ecb->dte_state;
   dtrace_buffer_t *buf = state->dts_buffer;
   dtrace_buffer_t *aggbuf = state->dts_aggbuffer;

   if (state->dts_speculates)
    break;

   if (!dtrace_buffer_consumed(buf, when))
    break;

   if (!dtrace_buffer_consumed(aggbuf, when))
    break;

   dtrace_ecb_disable(ecb);
   ASSERT(probe->dtpr_ecb != ecb);
   dtrace_ecb_destroy(ecb);
  }
 }

 mutex_exit(&dtrace_lock);
 mutex_exit(&cpu_lock);
}
