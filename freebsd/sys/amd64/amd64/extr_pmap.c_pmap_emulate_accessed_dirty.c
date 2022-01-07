
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_4__ {scalar_t__ ref_count; int flags; } ;


 int KASSERT (int,char*) ;
 scalar_t__ NPTEPG ;
 int PG_FICTITIOUS ;
 int PG_FRAME ;
 int PG_PS ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_MAXUSER_ADDRESS ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int ad_emulation_superpage_promotions ;
 int atomic_add_long (int *,int) ;
 int num_accessed_emulations ;
 int num_dirty_emulations ;
 int num_superpage_accessed_emulations ;
 int pmap_accessed_bit (int ) ;
 int pmap_emulate_ad_bits (int ) ;
 int pmap_modified_bit (int ) ;
 int* pmap_pde (int ,int ) ;
 int* pmap_pde_to_pte (int*,int ) ;
 int pmap_promote_pde (int ,int*,int ,struct rwlock**) ;
 scalar_t__ pmap_ps_enabled (int ) ;
 int pmap_rw_bit (int ) ;
 int pmap_valid_bit (int ) ;
 int rw_wunlock (struct rwlock*) ;
 scalar_t__ vm_reserv_level_iffullpop (TYPE_1__*) ;

int
pmap_emulate_accessed_dirty(pmap_t pmap, vm_offset_t va, int ftype)
{
 int rv;
 struct rwlock *lock;



 pd_entry_t *pde;
 pt_entry_t *pte, PG_A, PG_M, PG_RW, PG_V;

 KASSERT(ftype == VM_PROT_READ || ftype == VM_PROT_WRITE,
     ("pmap_emulate_accessed_dirty: invalid fault type %d", ftype));

 if (!pmap_emulate_ad_bits(pmap))
  return (-1);

 PG_A = pmap_accessed_bit(pmap);
 PG_M = pmap_modified_bit(pmap);
 PG_V = pmap_valid_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);

 rv = -1;
 lock = ((void*)0);
 PMAP_LOCK(pmap);

 pde = pmap_pde(pmap, va);
 if (pde == ((void*)0) || (*pde & PG_V) == 0)
  goto done;

 if ((*pde & PG_PS) != 0) {
  if (ftype == VM_PROT_READ) {



   *pde |= PG_A;
   rv = 0;
  }
  goto done;
 }

 pte = pmap_pde_to_pte(pde, va);
 if ((*pte & PG_V) == 0)
  goto done;

 if (ftype == VM_PROT_WRITE) {
  if ((*pte & PG_RW) == 0)
   goto done;
  *pte |= PG_M | PG_A;
 } else {
  *pte |= PG_A;
 }
 rv = 0;
done:
 if (lock != ((void*)0))
  rw_wunlock(lock);
 PMAP_UNLOCK(pmap);
 return (rv);
}
