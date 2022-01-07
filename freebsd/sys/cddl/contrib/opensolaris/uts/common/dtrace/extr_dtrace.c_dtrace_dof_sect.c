
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int dof_secidx_t ;
struct TYPE_6__ {int dofs_flags; scalar_t__ dofs_type; } ;
typedef TYPE_1__ dof_sec_t ;
struct TYPE_7__ {int dofh_secsize; int dofh_secnum; scalar_t__ dofh_secoff; } ;
typedef TYPE_2__ dof_hdr_t ;


 int DOF_SECF_LOAD ;
 scalar_t__ DOF_SECT_NONE ;
 int dtrace_dof_error (TYPE_2__*,char*) ;

__attribute__((used)) static dof_sec_t *
dtrace_dof_sect(dof_hdr_t *dof, uint32_t type, dof_secidx_t i)
{
 dof_sec_t *sec = (dof_sec_t *)(uintptr_t)
     ((uintptr_t)dof + dof->dofh_secoff + i * dof->dofh_secsize);

 if (i >= dof->dofh_secnum) {
  dtrace_dof_error(dof, "referenced section index is invalid");
  return (((void*)0));
 }

 if (!(sec->dofs_flags & DOF_SECF_LOAD)) {
  dtrace_dof_error(dof, "referenced section is not loadable");
  return (((void*)0));
 }

 if (type != DOF_SECT_NONE && type != sec->dofs_type) {
  dtrace_dof_error(dof, "referenced section is the wrong type");
  return (((void*)0));
 }

 return (sec);
}
