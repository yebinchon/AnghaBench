
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int dtrace_state_t ;
struct TYPE_6__ {scalar_t__ dofs_type; int dofs_align; int dofs_entsize; size_t dofs_size; scalar_t__ dofs_offset; } ;
typedef TYPE_1__ dof_sec_t ;
struct TYPE_7__ {scalar_t__ dofo_strtab; scalar_t__ dofo_value; int dofo_option; } ;
typedef TYPE_2__ dof_optdesc_t ;
struct TYPE_8__ {int dofh_secnum; int dofh_secsize; scalar_t__ dofh_secoff; } ;
typedef TYPE_3__ dof_hdr_t ;


 scalar_t__ DOF_SECIDX_NONE ;
 scalar_t__ DOF_SECT_OPTDESC ;
 scalar_t__ DTRACEOPT_UNSET ;
 int EINVAL ;
 int dtrace_dof_error (TYPE_3__*,char*) ;
 int dtrace_state_option (int *,int ,scalar_t__) ;

__attribute__((used)) static int
dtrace_dof_options(dof_hdr_t *dof, dtrace_state_t *state)
{
 int i, rval;
 uint32_t entsize;
 size_t offs;
 dof_optdesc_t *desc;

 for (i = 0; i < dof->dofh_secnum; i++) {
  dof_sec_t *sec = (dof_sec_t *)((uintptr_t)dof +
      (uintptr_t)dof->dofh_secoff + i * dof->dofh_secsize);

  if (sec->dofs_type != DOF_SECT_OPTDESC)
   continue;

  if (sec->dofs_align != sizeof (uint64_t)) {
   dtrace_dof_error(dof, "bad alignment in "
       "option description");
   return (EINVAL);
  }

  if ((entsize = sec->dofs_entsize) == 0) {
   dtrace_dof_error(dof, "zeroed option entry size");
   return (EINVAL);
  }

  if (entsize < sizeof (dof_optdesc_t)) {
   dtrace_dof_error(dof, "bad option entry size");
   return (EINVAL);
  }

  for (offs = 0; offs < sec->dofs_size; offs += entsize) {
   desc = (dof_optdesc_t *)((uintptr_t)dof +
       (uintptr_t)sec->dofs_offset + offs);

   if (desc->dofo_strtab != DOF_SECIDX_NONE) {
    dtrace_dof_error(dof, "non-zero option string");
    return (EINVAL);
   }

   if (desc->dofo_value == DTRACEOPT_UNSET) {
    dtrace_dof_error(dof, "unset option");
    return (EINVAL);
   }

   if ((rval = dtrace_state_option(state,
       desc->dofo_option, desc->dofo_value)) != 0) {
    dtrace_dof_error(dof, "rejected option");
    return (rval);
   }
  }
 }

 return (0);
}
