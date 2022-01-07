
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int invlpg (scalar_t__) ;
 int mtx_unlock_spin (int *) ;
 int pte_store (int ,int ) ;
 scalar_t__ qframe ;
 int qframe_mtx ;
 int vtopte (scalar_t__) ;

void
pmap_quick_remove_page(vm_offset_t addr)
{

 if (addr != qframe)
  return;
 pte_store(vtopte(qframe), 0);
 invlpg(qframe);
 mtx_unlock_spin(&qframe_mtx);
}
