
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;
struct TYPE_8__ {int system_mtx; } ;
struct TYPE_7__ {int flags; } ;


 int KERNBASE ;
 int MA_OWNED ;
 int NBPDR ;
 int PDPSHIFT ;
 int PDRMASK ;
 int PG_ZERO ;
 int VM_ALLOC_INTERRUPT ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int X86_PG_A ;
 int X86_PG_M ;
 int X86_PG_RW ;
 int X86_PG_V ;
 TYPE_3__* kernel_map ;
 int kernel_pmap ;
 int kernel_vm_end ;
 int mtx_assert (int *,int ) ;
 int nkpt ;
 int panic (char*) ;
 int pde_store (int*,int) ;
 int pmap_pde_pindex (int) ;
 int* pmap_pdpe (int ,int) ;
 int* pmap_pdpe_to_pde (int*,int) ;
 int pmap_zero_page (TYPE_1__*) ;
 int roundup2 (int,int) ;
 int vm_map_max (TYPE_3__*) ;
 TYPE_1__* vm_page_alloc (int *,int,int) ;

void
pmap_growkernel(vm_offset_t addr)
{
 vm_paddr_t paddr;
 vm_page_t nkpg;
 pd_entry_t *pde, newpdir;
 pdp_entry_t *pdpe;

 mtx_assert(&kernel_map->system_mtx, MA_OWNED);
 if (KERNBASE < addr && addr <= KERNBASE + nkpt * NBPDR)
  return;

 addr = roundup2(addr, NBPDR);
 if (addr - 1 >= vm_map_max(kernel_map))
  addr = vm_map_max(kernel_map);
 while (kernel_vm_end < addr) {
  pdpe = pmap_pdpe(kernel_pmap, kernel_vm_end);
  if ((*pdpe & X86_PG_V) == 0) {

   nkpg = vm_page_alloc(((void*)0), kernel_vm_end >> PDPSHIFT,
       VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ |
       VM_ALLOC_WIRED | VM_ALLOC_ZERO);
   if (nkpg == ((void*)0))
    panic("pmap_growkernel: no memory to grow kernel");
   if ((nkpg->flags & PG_ZERO) == 0)
    pmap_zero_page(nkpg);
   paddr = VM_PAGE_TO_PHYS(nkpg);
   *pdpe = (pdp_entry_t)(paddr | X86_PG_V | X86_PG_RW |
       X86_PG_A | X86_PG_M);
   continue;
  }
  pde = pmap_pdpe_to_pde(pdpe, kernel_vm_end);
  if ((*pde & X86_PG_V) != 0) {
   kernel_vm_end = (kernel_vm_end + NBPDR) & ~PDRMASK;
   if (kernel_vm_end - 1 >= vm_map_max(kernel_map)) {
    kernel_vm_end = vm_map_max(kernel_map);
    break;
   }
   continue;
  }

  nkpg = vm_page_alloc(((void*)0), pmap_pde_pindex(kernel_vm_end),
      VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED |
      VM_ALLOC_ZERO);
  if (nkpg == ((void*)0))
   panic("pmap_growkernel: no memory to grow kernel");
  if ((nkpg->flags & PG_ZERO) == 0)
   pmap_zero_page(nkpg);
  paddr = VM_PAGE_TO_PHYS(nkpg);
  newpdir = paddr | X86_PG_V | X86_PG_RW | X86_PG_A | X86_PG_M;
  pde_store(pde, newpdir);

  kernel_vm_end = (kernel_vm_end + NBPDR) & ~PDRMASK;
  if (kernel_vm_end - 1 >= vm_map_max(kernel_map)) {
   kernel_vm_end = vm_map_max(kernel_map);
   break;
  }
 }
}
