
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_state_t ;
struct TYPE_8__ {scalar_t__ dtpr_gen; } ;
typedef TYPE_2__ dtrace_probe_t ;
struct TYPE_9__ {scalar_t__ dten_probegen; TYPE_1__* dten_vstate; } ;
typedef TYPE_3__ dtrace_enabling_t ;
typedef int dtrace_ecb_t ;
struct TYPE_7__ {int * dtvs_state; } ;


 int ASSERT (int ) ;
 int DTRACE_MATCH_DONE ;
 int DTRACE_MATCH_NEXT ;
 int * dtrace_ecb_create (int *,TYPE_2__*,TYPE_3__*) ;
 int dtrace_ecb_enable (int *) ;

__attribute__((used)) static int
dtrace_ecb_create_enable(dtrace_probe_t *probe, void *arg)
{
 dtrace_ecb_t *ecb;
 dtrace_enabling_t *enab = arg;
 dtrace_state_t *state = enab->dten_vstate->dtvs_state;

 ASSERT(state != ((void*)0));

 if (probe != ((void*)0) && probe->dtpr_gen < enab->dten_probegen) {





  return (DTRACE_MATCH_NEXT);
 }

 if ((ecb = dtrace_ecb_create(state, probe, enab)) == ((void*)0))
  return (DTRACE_MATCH_DONE);

 dtrace_ecb_enable(ecb);
 return (DTRACE_MATCH_NEXT);
}
