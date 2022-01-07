
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;
typedef int pt1_entry_t ;


 int bcopy (int *,int *,int) ;
 int pte1_index (int ) ;

__attribute__((used)) static __inline void
pte1_copy_nosync(pt1_entry_t *spte1p, pt1_entry_t *dpte1p, vm_offset_t sva,
    vm_offset_t eva)
{
 u_int idx, count;

 idx = pte1_index(sva);
 count = (pte1_index(eva) - idx + 1) * sizeof(pt1_entry_t);
 bcopy(spte1p + idx, dpte1p + idx, count);
}
