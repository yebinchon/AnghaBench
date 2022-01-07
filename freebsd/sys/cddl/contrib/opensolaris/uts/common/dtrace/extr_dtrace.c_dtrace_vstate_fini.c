
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtvs_nglobals; int dtvs_ntlocals; int dtvs_nlocals; int * dtvs_locals; int * dtvs_tlocals; int * dtvs_globals; } ;
typedef TYPE_1__ dtrace_vstate_t ;
typedef int dtrace_statvar_t ;
typedef int dtrace_difv_t ;


 int ASSERT (int) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
dtrace_vstate_fini(dtrace_vstate_t *vstate)
{



 ASSERT((vstate->dtvs_nglobals == 0) ^ (vstate->dtvs_globals != ((void*)0)));

 if (vstate->dtvs_nglobals > 0) {
  kmem_free(vstate->dtvs_globals, vstate->dtvs_nglobals *
      sizeof (dtrace_statvar_t *));
 }

 if (vstate->dtvs_ntlocals > 0) {
  kmem_free(vstate->dtvs_tlocals, vstate->dtvs_ntlocals *
      sizeof (dtrace_difv_t));
 }

 ASSERT((vstate->dtvs_nlocals == 0) ^ (vstate->dtvs_locals != ((void*)0)));

 if (vstate->dtvs_nlocals > 0) {
  kmem_free(vstate->dtvs_locals, vstate->dtvs_nlocals *
      sizeof (dtrace_statvar_t *));
 }
}
