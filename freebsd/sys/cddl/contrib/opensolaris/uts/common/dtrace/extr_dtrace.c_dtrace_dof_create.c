
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int * dts_options; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_9__ {int dofs_align; int dofs_entsize; uintptr_t dofs_offset; int dofs_size; int dofs_flags; int dofs_type; } ;
typedef TYPE_2__ dof_sec_t ;
struct TYPE_10__ {int dofo_option; int dofo_value; int dofo_strtab; } ;
typedef TYPE_3__ dof_optdesc_t ;
struct TYPE_11__ {int dofh_hdrsize; int dofh_secsize; int dofh_secnum; int dofh_secoff; int dofh_loadsz; int dofh_filesz; scalar_t__ dofh_pad; scalar_t__ dofh_flags; int * dofh_ident; } ;
typedef TYPE_4__ dof_hdr_t ;


 int ASSERT (int ) ;
 int DIF_DIR_NREGS ;
 int DIF_DTR_NREGS ;
 int DIF_VERSION ;
 int DOF_ENCODE_NATIVE ;
 size_t DOF_ID_DIFIREG ;
 size_t DOF_ID_DIFTREG ;
 size_t DOF_ID_DIFVERS ;
 size_t DOF_ID_ENCODING ;
 size_t DOF_ID_MAG0 ;
 size_t DOF_ID_MAG1 ;
 size_t DOF_ID_MAG2 ;
 size_t DOF_ID_MAG3 ;
 size_t DOF_ID_MODEL ;
 size_t DOF_ID_VERSION ;
 int DOF_MAG_MAG0 ;
 int DOF_MAG_MAG1 ;
 int DOF_MAG_MAG2 ;
 int DOF_MAG_MAG3 ;
 int DOF_MODEL_NATIVE ;
 int DOF_SECF_LOAD ;
 int DOF_SECIDX_NONE ;
 int DOF_SECT_OPTDESC ;
 int DOF_VERSION ;
 int DTRACEOPT_MAX ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 uintptr_t roundup (int,int) ;

__attribute__((used)) static dof_hdr_t *
dtrace_dof_create(dtrace_state_t *state)
{
 dof_hdr_t *dof;
 dof_sec_t *sec;
 dof_optdesc_t *opt;
 int i, len = sizeof (dof_hdr_t) +
     roundup(sizeof (dof_sec_t), sizeof (uint64_t)) +
     sizeof (dof_optdesc_t) * DTRACEOPT_MAX;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 dof = kmem_zalloc(len, KM_SLEEP);
 dof->dofh_ident[DOF_ID_MAG0] = DOF_MAG_MAG0;
 dof->dofh_ident[DOF_ID_MAG1] = DOF_MAG_MAG1;
 dof->dofh_ident[DOF_ID_MAG2] = DOF_MAG_MAG2;
 dof->dofh_ident[DOF_ID_MAG3] = DOF_MAG_MAG3;

 dof->dofh_ident[DOF_ID_MODEL] = DOF_MODEL_NATIVE;
 dof->dofh_ident[DOF_ID_ENCODING] = DOF_ENCODE_NATIVE;
 dof->dofh_ident[DOF_ID_VERSION] = DOF_VERSION;
 dof->dofh_ident[DOF_ID_DIFVERS] = DIF_VERSION;
 dof->dofh_ident[DOF_ID_DIFIREG] = DIF_DIR_NREGS;
 dof->dofh_ident[DOF_ID_DIFTREG] = DIF_DTR_NREGS;

 dof->dofh_flags = 0;
 dof->dofh_hdrsize = sizeof (dof_hdr_t);
 dof->dofh_secsize = sizeof (dof_sec_t);
 dof->dofh_secnum = 1;
 dof->dofh_secoff = sizeof (dof_hdr_t);
 dof->dofh_loadsz = len;
 dof->dofh_filesz = len;
 dof->dofh_pad = 0;




 sec = (dof_sec_t *)((uintptr_t)dof + sizeof (dof_hdr_t));
 sec->dofs_type = DOF_SECT_OPTDESC;
 sec->dofs_align = sizeof (uint64_t);
 sec->dofs_flags = DOF_SECF_LOAD;
 sec->dofs_entsize = sizeof (dof_optdesc_t);

 opt = (dof_optdesc_t *)((uintptr_t)sec +
     roundup(sizeof (dof_sec_t), sizeof (uint64_t)));

 sec->dofs_offset = (uintptr_t)opt - (uintptr_t)dof;
 sec->dofs_size = sizeof (dof_optdesc_t) * DTRACEOPT_MAX;

 for (i = 0; i < DTRACEOPT_MAX; i++) {
  opt[i].dofo_option = i;
  opt[i].dofo_strtab = DOF_SECIDX_NONE;
  opt[i].dofo_value = state->dts_options[i];
 }

 return (dof);
}
