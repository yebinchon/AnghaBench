
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_8__ {int pm_root; } ;
struct TYPE_7__ {int valid; } ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int VM_PAGE_BITS_ALL ;
 int vm_radix_insert (int *,TYPE_1__*) ;

__attribute__((used)) static __inline int
pmap_insert_pt_page(pmap_t pmap, vm_page_t mpte, bool promoted)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 mpte->valid = promoted ? VM_PAGE_BITS_ALL : 0;
 return (vm_radix_insert(&pmap->pm_root, mpte));
}
