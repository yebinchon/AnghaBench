
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int register_t ;
typedef int pt1_entry_t ;
typedef scalar_t__ pmap_t ;


 int PSR_F ;
 int PSR_I ;
 int allpmaps_lock ;
 int disable_interrupts (int) ;
 scalar_t__ kernel_pmap ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmap_tlb_flush_pte1 (scalar_t__,int ,int ) ;
 int pmap_update_pte1_kernel (int ,int ) ;
 int pte1_clear (int *) ;
 int pte1_store (int *,int ) ;
 int restore_interrupts (int ) ;

__attribute__((used)) static void
pmap_change_pte1(pmap_t pmap, pt1_entry_t *pte1p, vm_offset_t va,
    pt1_entry_t npte1)
{

 if (pmap == kernel_pmap) {
  mtx_lock_spin(&allpmaps_lock);
  pmap_update_pte1_kernel(va, npte1);
  mtx_unlock_spin(&allpmaps_lock);
 } else {
  register_t cspr;






  cspr = disable_interrupts(PSR_I | PSR_F);
  pte1_clear(pte1p);
  pmap_tlb_flush_pte1(pmap, va, npte1);
  pte1_store(pte1p, npte1);
  restore_interrupts(cspr);
 }
}
