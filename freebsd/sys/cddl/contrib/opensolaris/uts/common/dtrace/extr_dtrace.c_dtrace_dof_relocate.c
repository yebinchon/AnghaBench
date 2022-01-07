
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
typedef int dof_secidx_t ;
struct TYPE_6__ {uintptr_t dofs_offset; int dofs_size; int dofs_align; int dofs_entsize; } ;
typedef TYPE_1__ dof_sec_t ;
struct TYPE_7__ {int dofr_tgtsec; int dofr_relsec; int dofr_strtab; } ;
typedef TYPE_2__ dof_relohdr_t ;
struct TYPE_8__ {uintptr_t dofr_offset; int dofr_type; } ;
typedef TYPE_3__ dof_relodesc_t ;
typedef int dof_hdr_t ;





 int DOF_SECT_NONE ;
 int DOF_SECT_RELTAB ;
 int DOF_SECT_STRTAB ;
 int IS_P2ALIGNED (uintptr_t,int) ;
 int dtrace_dof_error (int *,char*) ;
 TYPE_1__* dtrace_dof_sect (int *,int ,int ) ;

__attribute__((used)) static int
dtrace_dof_relocate(dof_hdr_t *dof, dof_sec_t *sec, uint64_t ubase,
    uint64_t udaddr)
{
 uintptr_t daddr = (uintptr_t)dof;
 uintptr_t ts_end;
 dof_relohdr_t *dofr =
     (dof_relohdr_t *)(uintptr_t)(daddr + sec->dofs_offset);
 dof_sec_t *ss, *rs, *ts;
 dof_relodesc_t *r;
 uint_t i, n;

 if (sec->dofs_size < sizeof (dof_relohdr_t) ||
     sec->dofs_align != sizeof (dof_secidx_t)) {
  dtrace_dof_error(dof, "invalid relocation header");
  return (-1);
 }

 ss = dtrace_dof_sect(dof, DOF_SECT_STRTAB, dofr->dofr_strtab);
 rs = dtrace_dof_sect(dof, DOF_SECT_RELTAB, dofr->dofr_relsec);
 ts = dtrace_dof_sect(dof, DOF_SECT_NONE, dofr->dofr_tgtsec);
 ts_end = (uintptr_t)ts + sizeof (dof_sec_t);

 if (ss == ((void*)0) || rs == ((void*)0) || ts == ((void*)0))
  return (-1);

 if (rs->dofs_entsize < sizeof (dof_relodesc_t) ||
     rs->dofs_align != sizeof (uint64_t)) {
  dtrace_dof_error(dof, "invalid relocation section");
  return (-1);
 }

 r = (dof_relodesc_t *)(uintptr_t)(daddr + rs->dofs_offset);
 n = rs->dofs_size / rs->dofs_entsize;

 for (i = 0; i < n; i++) {
  uintptr_t taddr = daddr + ts->dofs_offset + r->dofr_offset;

  switch (r->dofr_type) {
  case 129:
   break;
  case 128:
  case 130:
   if (r->dofr_offset >= ts->dofs_size || r->dofr_offset +
       sizeof (uint64_t) > ts->dofs_size) {
    dtrace_dof_error(dof, "bad relocation offset");
    return (-1);
   }

   if (taddr >= (uintptr_t)ts && taddr < ts_end) {
    dtrace_dof_error(dof, "bad relocation offset");
    return (-1);
   }

   if (!IS_P2ALIGNED(taddr, sizeof (uint64_t))) {
    dtrace_dof_error(dof, "misaligned setx relo");
    return (-1);
   }

   if (r->dofr_type == 128)
    *(uint64_t *)taddr += ubase;
   else
    *(uint64_t *)taddr +=
        udaddr + ts->dofs_offset + r->dofr_offset;
   break;
  default:
   dtrace_dof_error(dof, "invalid relocation type");
   return (-1);
  }

  r = (dof_relodesc_t *)((uintptr_t)r + rs->dofs_entsize);
 }

 return (0);
}
