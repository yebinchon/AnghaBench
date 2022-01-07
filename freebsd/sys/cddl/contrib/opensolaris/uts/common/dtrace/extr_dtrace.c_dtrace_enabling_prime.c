
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_state_t ;
struct TYPE_6__ {int dten_primed; int dten_ndesc; int * dten_desc; int dten_current; TYPE_1__* dten_vstate; struct TYPE_6__* dten_next; } ;
typedef TYPE_2__ dtrace_enabling_t ;
struct TYPE_5__ {int * dtvs_state; } ;


 int ASSERT (int ) ;
 int dtrace_probe_enable (int *,TYPE_2__*) ;
 TYPE_2__* dtrace_retained ;

__attribute__((used)) static void
dtrace_enabling_prime(dtrace_state_t *state)
{
 dtrace_enabling_t *enab;
 int i;

 for (enab = dtrace_retained; enab != ((void*)0); enab = enab->dten_next) {
  ASSERT(enab->dten_vstate->dtvs_state != ((void*)0));

  if (enab->dten_vstate->dtvs_state != state)
   continue;
  if (enab->dten_primed)
   continue;

  for (i = 0; i < enab->dten_ndesc; i++) {
   enab->dten_current = enab->dten_desc[i];
   (void) dtrace_probe_enable(((void*)0), enab);
  }

  enab->dten_primed = 1;
 }
}
