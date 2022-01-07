
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;
typedef int pt2_entry_t ;


 int bcopy (int *,int *,int) ;
 int pt2tab_index (int ) ;

__attribute__((used)) static __inline void
pt2tab_copy_nosync(pt2_entry_t *spte2p, pt2_entry_t *dpte2p, vm_offset_t sva,
    vm_offset_t eva)
{
 u_int idx, count;

 idx = pt2tab_index(sva);
 count = (pt2tab_index(eva) - idx + 1) * sizeof(pt2_entry_t);
 bcopy(spte2p + idx, dpte2p + idx, count);
}
