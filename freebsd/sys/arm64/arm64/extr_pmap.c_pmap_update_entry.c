
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int register_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_DESCR_VALID ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int dsb (int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int ishst ;
 int pmap_clear_bits (int *,int ) ;
 int pmap_invalidate_range_nopin (int ,scalar_t__,scalar_t__) ;
 int pmap_store (int *,int ) ;

__attribute__((used)) static void
pmap_update_entry(pmap_t pmap, pd_entry_t *pte, pd_entry_t newpte,
    vm_offset_t va, vm_size_t size)
{
 register_t intr;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);






 intr = intr_disable();






 pmap_clear_bits(pte, ATTR_DESCR_VALID);
 pmap_invalidate_range_nopin(pmap, va, va + size);


 pmap_store(pte, newpte);
 dsb(ishst);

 intr_restore(intr);
}
