
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt2_entry_t ;


 int * PADDR2 ;
 int PMAP2mutex ;
 int mtx_unlock (int *) ;
 scalar_t__ trunc_page (int ) ;

__attribute__((used)) static __inline void
pmap_pte2_release(pt2_entry_t *pte2p)
{

 if ((pt2_entry_t *)(trunc_page((vm_offset_t)pte2p)) == PADDR2) {
  mtx_unlock(&PMAP2mutex);
 }
}
