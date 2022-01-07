
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uint64_t ;
struct proc {TYPE_2__* p_dtrace_helpers; } ;
typedef int dtrace_vstate_t ;
struct TYPE_25__ {int dtpd_func; int dtpd_mod; int dtpd_provider; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
struct TYPE_26__ {int dthps_generation; int dthps_vstate; } ;
typedef TYPE_2__ dtrace_helpers_t ;
struct TYPE_27__ {int dten_ndesc; TYPE_4__** dten_desc; } ;
typedef TYPE_3__ dtrace_enabling_t ;
struct TYPE_28__ {TYPE_1__ dted_probe; } ;
typedef TYPE_4__ dtrace_ecbdesc_t ;
struct TYPE_29__ {scalar_t__ dofs_type; } ;
typedef TYPE_5__ dof_sec_t ;
struct TYPE_30__ {int dofhp_dof; int dofhp_addr; } ;
typedef TYPE_6__ dof_helper_t ;
struct TYPE_31__ {int dofh_secnum; int dofh_secsize; scalar_t__ dofh_secoff; } ;
typedef TYPE_7__ dof_hdr_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 scalar_t__ DOF_SECT_PROVIDER ;
 int DTRACE_HELPER_ACTION_USTACK ;
 int MUTEX_HELD (int *) ;
 int dtrace_dof_destroy (TYPE_7__*) ;
 int dtrace_dof_error (TYPE_7__*,char*) ;
 int dtrace_dof_slurp (TYPE_7__*,int *,int *,TYPE_3__**,int ,int ,int ) ;
 int dtrace_enabling_destroy (TYPE_3__*) ;
 int dtrace_helper_action_add (int ,TYPE_4__*,TYPE_2__*) ;
 int dtrace_helper_destroygen (TYPE_2__*,int ) ;
 scalar_t__ dtrace_helper_provider_add (TYPE_6__*,TYPE_2__*,int) ;
 int dtrace_helper_provider_register (struct proc*,TYPE_2__*,TYPE_6__*) ;
 scalar_t__ dtrace_helper_provider_validate (TYPE_7__*,TYPE_5__*) ;
 TYPE_2__* dtrace_helpers_create (struct proc*) ;
 int dtrace_lock ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
dtrace_helper_slurp(dof_hdr_t *dof, dof_helper_t *dhp, struct proc *p)
{
 dtrace_helpers_t *help;
 dtrace_vstate_t *vstate;
 dtrace_enabling_t *enab = ((void*)0);
 int i, gen, rv, nhelpers = 0, nprovs = 0, destroy = 1;
 uintptr_t daddr = (uintptr_t)dof;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 if ((help = p->p_dtrace_helpers) == ((void*)0))
  help = dtrace_helpers_create(p);

 vstate = &help->dthps_vstate;

 if ((rv = dtrace_dof_slurp(dof, vstate, ((void*)0), &enab, dhp->dofhp_addr,
     dhp->dofhp_dof, B_FALSE)) != 0) {
  dtrace_dof_destroy(dof);
  return (rv);
 }




 for (i = 0; i < dof->dofh_secnum; i++) {
  dof_sec_t *sec = (dof_sec_t *)(uintptr_t)(daddr +
      dof->dofh_secoff + i * dof->dofh_secsize);

  if (sec->dofs_type != DOF_SECT_PROVIDER)
   continue;

  if (dtrace_helper_provider_validate(dof, sec) != 0) {
   dtrace_enabling_destroy(enab);
   dtrace_dof_destroy(dof);
   return (-1);
  }

  nprovs++;
 }




 for (i = 0; i < enab->dten_ndesc; i++) {
  dtrace_ecbdesc_t *ep = enab->dten_desc[i];
  dtrace_probedesc_t *desc = &ep->dted_probe;

  if (strcmp(desc->dtpd_provider, "dtrace") != 0)
   continue;

  if (strcmp(desc->dtpd_mod, "helper") != 0)
   continue;

  if (strcmp(desc->dtpd_func, "ustack") != 0)
   continue;

  if ((rv = dtrace_helper_action_add(DTRACE_HELPER_ACTION_USTACK,
      ep, help)) != 0) {




   (void) dtrace_helper_destroygen(help,
       help->dthps_generation);
   dtrace_enabling_destroy(enab);
   dtrace_dof_destroy(dof);
   return (-1);
  }

  nhelpers++;
 }

 if (nhelpers < enab->dten_ndesc)
  dtrace_dof_error(dof, "unmatched helpers");

 gen = help->dthps_generation++;
 dtrace_enabling_destroy(enab);

 if (nprovs > 0) {





  dhp->dofhp_addr = dhp->dofhp_dof;
  dhp->dofhp_dof = (uint64_t)(uintptr_t)dof;

  if (dtrace_helper_provider_add(dhp, help, gen) == 0) {
   mutex_exit(&dtrace_lock);
   dtrace_helper_provider_register(p, help, dhp);
   mutex_enter(&dtrace_lock);

   destroy = 0;
  }
 }

 if (destroy)
  dtrace_dof_destroy(dof);

 return (gen);
}
