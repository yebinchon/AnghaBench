
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int pmap_kremove (scalar_t__) ;
 scalar_t__ qmap_addr ;
 int qmap_mtx ;

void
pmap_quick_remove_page(vm_offset_t addr)
{
 KASSERT(addr == qmap_addr,
     ("pmap_quick_remove_page: invalid address"));
 mtx_assert(&qmap_mtx, MA_OWNED);
 pmap_kremove(addr);
 mtx_unlock(&qmap_mtx);
}
