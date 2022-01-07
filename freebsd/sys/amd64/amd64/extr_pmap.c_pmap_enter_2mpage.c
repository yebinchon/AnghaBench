
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
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int pat_mode; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;


 scalar_t__ KERN_SUCCESS ;
 int MA_OWNED ;
 int PG_MANAGED ;
 int PG_PS ;
 int PG_U ;
 int PMAP_ENTER_NORECLAIM ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VM_PROT_EXECUTE ;
 int VPO_UNMANAGED ;
 int pg_nx ;
 int pmap_cache_bits (int ,int ,int) ;
 scalar_t__ pmap_enter_pde (int ,scalar_t__,int,int,int *,struct rwlock**) ;
 int pmap_valid_bit (int ) ;

__attribute__((used)) static bool
pmap_enter_2mpage(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    struct rwlock **lockp)
{
 pd_entry_t newpde;
 pt_entry_t PG_V;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 PG_V = pmap_valid_bit(pmap);
 newpde = VM_PAGE_TO_PHYS(m) | pmap_cache_bits(pmap, m->md.pat_mode, 1) |
     PG_PS | PG_V;
 if ((m->oflags & VPO_UNMANAGED) == 0)
  newpde |= PG_MANAGED;
 if ((prot & VM_PROT_EXECUTE) == 0)
  newpde |= pg_nx;
 if (va < VM_MAXUSER_ADDRESS)
  newpde |= PG_U;
 return (pmap_enter_pde(pmap, va, newpde, PMAP_ENTER_NOSLEEP |
     PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, ((void*)0), lockp) ==
     KERN_SUCCESS);
}
