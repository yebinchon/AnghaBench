
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef scalar_t__ pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {scalar_t__ pv_memattr; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;


 int ATTR_AF ;
 int ATTR_AP (int ) ;
 int ATTR_AP_RO ;
 int ATTR_AP_USER ;
 int ATTR_DEFAULT ;
 int ATTR_IDX (scalar_t__) ;
 int ATTR_PXN ;
 int ATTR_SW_MANAGED ;
 int ATTR_UXN ;
 int ATTR_XN ;
 int ATTR_nG ;
 scalar_t__ DEVICE_MEMORY ;
 scalar_t__ KERN_SUCCESS ;
 int L2_BLOCK ;
 int MA_OWNED ;
 int PMAP_ENTER_NORECLAIM ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (scalar_t__,int ) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VM_PROT_EXECUTE ;
 int VPO_UNMANAGED ;
 scalar_t__ kernel_pmap ;
 scalar_t__ pmap_enter_l2 (scalar_t__,scalar_t__,int,int,int *,struct rwlock**) ;

__attribute__((used)) static bool
pmap_enter_2mpage(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    struct rwlock **lockp)
{
 pd_entry_t new_l2;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 new_l2 = (pd_entry_t)(VM_PAGE_TO_PHYS(m) | ATTR_DEFAULT |
     ATTR_IDX(m->md.pv_memattr) | ATTR_AP(ATTR_AP_RO) | L2_BLOCK);
 if ((m->oflags & VPO_UNMANAGED) == 0) {
  new_l2 |= ATTR_SW_MANAGED;
  new_l2 &= ~ATTR_AF;
 }
 if ((prot & VM_PROT_EXECUTE) == 0 || m->md.pv_memattr == DEVICE_MEMORY)
  new_l2 |= ATTR_XN;
 if (va < VM_MAXUSER_ADDRESS)
  new_l2 |= ATTR_AP(ATTR_AP_USER) | ATTR_PXN;
 else
  new_l2 |= ATTR_UXN;
 if (pmap != kernel_pmap)
  new_l2 |= ATTR_nG;
 return (pmap_enter_l2(pmap, va, new_l2, PMAP_ENTER_NOSLEEP |
     PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, ((void*)0), lockp) ==
     KERN_SUCCESS);
}
