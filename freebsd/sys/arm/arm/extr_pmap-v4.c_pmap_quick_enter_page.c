
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;


 int MA_NOTOWNED ;
 int VM_PAGE_TO_PHYS (int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int pmap_kenter (int ,int ) ;
 int qmap_addr ;
 int qmap_mtx ;

vm_offset_t
pmap_quick_enter_page(vm_page_t m)
{







 mtx_assert(&qmap_mtx, MA_NOTOWNED);
 mtx_lock(&qmap_mtx);

 pmap_kenter(qmap_addr, VM_PAGE_TO_PHYS(m));

 return (qmap_addr);
}
