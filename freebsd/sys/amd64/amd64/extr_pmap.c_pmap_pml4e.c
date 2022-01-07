
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pml4_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int * pm_pml4; } ;


 size_t pmap_pml4e_index (int ) ;

__attribute__((used)) static __inline pml4_entry_t *
pmap_pml4e(pmap_t pmap, vm_offset_t va)
{

 return (&pmap->pm_pml4[pmap_pml4e_index(va)]);
}
