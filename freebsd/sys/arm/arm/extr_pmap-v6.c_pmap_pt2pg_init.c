
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef scalar_t__ pmap_t ;
struct TYPE_7__ {scalar_t__ pat_mode; } ;
struct TYPE_8__ {TYPE_1__ md; } ;


 int PTE2_KPT (int ) ;
 int PTE2_KPT_NG (int ) ;
 scalar_t__ kernel_pmap ;
 int pmap_kenter_pt2tab (int ,int ) ;
 int pmap_page_set_memattr (TYPE_2__*,scalar_t__) ;
 int pmap_pt2pg_zero (TYPE_2__*) ;
 int * pmap_pt2tab_entry (scalar_t__,int ) ;
 int pt2_wirecount_init (TYPE_2__*) ;
 int pt2tab_store (int *,int ) ;
 scalar_t__ pt_memattr ;

__attribute__((used)) static __inline vm_paddr_t
pmap_pt2pg_init(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
 vm_paddr_t pa;
 pt2_entry_t *pte2p;


 if (m->md.pat_mode != pt_memattr)
  pmap_page_set_memattr(m, pt_memattr);


 pa = pmap_pt2pg_zero(m);
 pt2_wirecount_init(m);





 if (pmap == kernel_pmap)
  pmap_kenter_pt2tab(va, PTE2_KPT(pa));
 else {
  pte2p = pmap_pt2tab_entry(pmap, va);
  pt2tab_store(pte2p, PTE2_KPT_NG(pa));
 }

 return (pa);
}
