
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_page_t ;
typedef scalar_t__ u_long ;
struct TYPE_4__ {scalar_t__ gen; } ;
struct TYPE_5__ {TYPE_1__ md_invl_gen; } ;
struct TYPE_6__ {TYPE_2__ td_md; } ;


 int RA_WLOCKED ;
 int VM_PAGE_TO_PV_LIST_LOCK (int ) ;
 TYPE_3__* curthread ;
 scalar_t__* pmap_delayed_invl_genp (int ) ;
 int rw_assert (int ,int ) ;

__attribute__((used)) static void
pmap_delayed_invl_page(vm_page_t m)
{
 u_long gen, *m_gen;

 rw_assert(VM_PAGE_TO_PV_LIST_LOCK(m), RA_WLOCKED);
 gen = curthread->td_md.md_invl_gen.gen;
 if (gen == 0)
  return;
 m_gen = pmap_delayed_invl_genp(m);
 if (*m_gen < gen)
  *m_gen = gen;
}
