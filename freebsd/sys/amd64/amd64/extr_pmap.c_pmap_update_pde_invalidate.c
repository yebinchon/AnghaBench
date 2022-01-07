
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {scalar_t__ pm_type; } ;


 int KASSERT (int,char*) ;
 int PG_PS ;
 scalar_t__ PT_X86 ;
 int invlpg (int ) ;
 int invltlb () ;
 int invltlb_glob () ;
 int pmap_global_bit (TYPE_1__*) ;
 scalar_t__ pmap_type_guest (TYPE_1__*) ;

__attribute__((used)) static void
pmap_update_pde_invalidate(pmap_t pmap, vm_offset_t va, pd_entry_t newpde)
{
 pt_entry_t PG_G;

 if (pmap_type_guest(pmap))
  return;

 KASSERT(pmap->pm_type == PT_X86,
     ("pmap_update_pde_invalidate: invalid type %d", pmap->pm_type));

 PG_G = pmap_global_bit(pmap);

 if ((newpde & PG_PS) == 0)

  invlpg(va);
 else if ((newpde & PG_G) == 0)




  invltlb();
 else {




  invltlb_glob();
 }
}
