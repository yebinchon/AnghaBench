
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_memattr_t ;


 int PTE2_ATTR2IDX (int ) ;
 int pmap_set_tex () ;
 int * pte2_attr_tab ;
 int * tex_class ;

void
pmap_remap_vm_attr(vm_memattr_t old_attr, vm_memattr_t new_attr)
{
 int old_idx, new_idx;


 old_idx = PTE2_ATTR2IDX(pte2_attr_tab[(int)old_attr]);
 new_idx = PTE2_ATTR2IDX(pte2_attr_tab[(int)new_attr]);


 tex_class[old_idx] = tex_class[new_idx];
 pmap_set_tex();
}
