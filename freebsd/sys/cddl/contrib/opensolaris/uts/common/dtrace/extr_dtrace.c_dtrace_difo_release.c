
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_vstate_t ;
struct TYPE_5__ {scalar_t__ dtdv_id; } ;
typedef TYPE_1__ dtrace_difv_t ;
struct TYPE_6__ {scalar_t__ dtdo_refcnt; int dtdo_varlen; TYPE_1__* dtdo_vartab; } ;
typedef TYPE_2__ dtrace_difo_t ;


 int ASSERT (int) ;
 scalar_t__ DIF_VAR_VTIMESTAMP ;
 int MUTEX_HELD (int *) ;
 int dtrace_difo_destroy (TYPE_2__*,int *) ;
 int dtrace_lock ;
 int dtrace_vtime_disable () ;
 scalar_t__ dtrace_vtime_references ;

__attribute__((used)) static void
dtrace_difo_release(dtrace_difo_t *dp, dtrace_vstate_t *vstate)
{
 int i;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(dp->dtdo_refcnt != 0);

 for (i = 0; i < dp->dtdo_varlen; i++) {
  dtrace_difv_t *v = &dp->dtdo_vartab[i];

  if (v->dtdv_id != DIF_VAR_VTIMESTAMP)
   continue;

  ASSERT(dtrace_vtime_references > 0);
  if (--dtrace_vtime_references == 0)
   dtrace_vtime_disable();
 }

 if (--dp->dtdo_refcnt == 0)
  dtrace_difo_destroy(dp, vstate);
}
