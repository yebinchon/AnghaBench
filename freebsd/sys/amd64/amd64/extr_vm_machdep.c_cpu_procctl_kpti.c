
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_flags; } ;
struct proc {int p_vmspace; TYPE_1__ p_md; } ;
struct TYPE_4__ {scalar_t__ pm_ucr3; } ;


 scalar_t__ PMAP_NO_CR3 ;
 int PROC_KPTI_CTL ;
 int PROC_KPTI_CTL_DISABLE_ON_EXEC ;
 int PROC_KPTI_CTL_ENABLE_ON_EXEC ;
 int PROC_KPTI_STATUS_ACTIVE ;
 int P_MD_KPTI ;
 scalar_t__ pti ;
 TYPE_2__* vmspace_pmap (int ) ;

__attribute__((used)) static void
cpu_procctl_kpti(struct proc *p, int com, int *val)
{

 if (com == PROC_KPTI_CTL) {
  if (pti && *val == PROC_KPTI_CTL_ENABLE_ON_EXEC)
   p->p_md.md_flags |= P_MD_KPTI;
  if (*val == PROC_KPTI_CTL_DISABLE_ON_EXEC)
   p->p_md.md_flags &= ~P_MD_KPTI;
 } else {
  *val = (p->p_md.md_flags & P_MD_KPTI) != 0 ?
      PROC_KPTI_CTL_ENABLE_ON_EXEC:
      PROC_KPTI_CTL_DISABLE_ON_EXEC;
  if (vmspace_pmap(p->p_vmspace)->pm_ucr3 != PMAP_NO_CR3)
   *val |= PROC_KPTI_STATUS_ACTIVE;
 }
}
