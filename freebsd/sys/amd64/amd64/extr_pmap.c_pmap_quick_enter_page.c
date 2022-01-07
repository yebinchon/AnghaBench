
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_5__ {int pat_mode; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int PHYS_TO_DMAP (int) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int X86_PG_A ;
 int X86_PG_M ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int dmaplimit ;
 int kernel_pmap ;
 int mtx_lock_spin (int *) ;
 int pmap_cache_bits (int ,int ,int ) ;
 int pte_store (scalar_t__*,int) ;
 int qframe ;
 int qframe_mtx ;
 scalar_t__* vtopte (int ) ;

vm_offset_t
pmap_quick_enter_page(vm_page_t m)
{
 vm_paddr_t paddr;

 paddr = VM_PAGE_TO_PHYS(m);
 if (paddr < dmaplimit)
  return (PHYS_TO_DMAP(paddr));
 mtx_lock_spin(&qframe_mtx);
 KASSERT(*vtopte(qframe) == 0, ("qframe busy"));
 pte_store(vtopte(qframe), paddr | X86_PG_RW | X86_PG_V | X86_PG_A |
     X86_PG_M | pmap_cache_bits(kernel_pmap, m->md.pat_mode, 0));
 return (qframe);
}
