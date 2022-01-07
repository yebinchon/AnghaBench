
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dofhp_dof; } ;
struct TYPE_6__ {scalar_t__ dthp_ref; TYPE_1__ dthp_prov; } ;
typedef TYPE_2__ dtrace_helper_provider_t ;
typedef int dof_hdr_t ;


 int dtrace_dof_destroy (int *) ;
 int dtrace_lock ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
dtrace_helper_provider_destroy(dtrace_helper_provider_t *hprov)
{
 mutex_enter(&dtrace_lock);

 if (--hprov->dthp_ref == 0) {
  dof_hdr_t *dof;
  mutex_exit(&dtrace_lock);
  dof = (dof_hdr_t *)(uintptr_t)hprov->dthp_prov.dofhp_dof;
  dtrace_dof_destroy(dof);
  kmem_free(hprov, sizeof (dtrace_helper_provider_t));
 } else {
  mutex_exit(&dtrace_lock);
 }
}
