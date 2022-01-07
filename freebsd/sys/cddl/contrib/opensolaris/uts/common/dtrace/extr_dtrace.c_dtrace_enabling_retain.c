
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dts_nretained; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_8__ {struct TYPE_8__* dten_prev; struct TYPE_8__* dten_next; TYPE_1__* dten_vstate; } ;
typedef TYPE_3__ dtrace_enabling_t ;
struct TYPE_6__ {TYPE_2__* dtvs_state; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;
 scalar_t__ dtrace_retain_max ;
 TYPE_3__* dtrace_retained ;
 int dtrace_retained_gen ;

__attribute__((used)) static int
dtrace_enabling_retain(dtrace_enabling_t *enab)
{
 dtrace_state_t *state;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(enab->dten_next == ((void*)0) && enab->dten_prev == ((void*)0));
 ASSERT(enab->dten_vstate != ((void*)0));

 state = enab->dten_vstate->dtvs_state;
 ASSERT(state != ((void*)0));




 if (state->dts_nretained >= dtrace_retain_max)
  return (ENOSPC);

 state->dts_nretained++;
 dtrace_retained_gen++;

 if (dtrace_retained == ((void*)0)) {
  dtrace_retained = enab;
  return (0);
 }

 enab->dten_next = dtrace_retained;
 dtrace_retained->dten_prev = enab;
 dtrace_retained = enab;

 return (0);
}
