
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_paddr_t ;
struct TYPE_5__ {int sc_enabled; } ;


 int PL310_INV_LINE_PA ;
 int PL310_LOCK (TYPE_1__*) ;
 int PL310_UNLOCK (TYPE_1__*) ;
 int g_l2cache_align_mask ;
 scalar_t__ g_l2cache_line_size ;
 int pl310_cache_sync () ;
 TYPE_1__* pl310_softc ;
 int pl310_write4 (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
pl310_inv_range(vm_paddr_t start, vm_size_t size)
{

 if ((pl310_softc == ((void*)0)) || !pl310_softc->sc_enabled)
  return;

 PL310_LOCK(pl310_softc);
 if (start & g_l2cache_align_mask) {
  size += start & g_l2cache_align_mask;
  start &= ~g_l2cache_align_mask;
 }
 if (size & g_l2cache_align_mask) {
  size &= ~g_l2cache_align_mask;
  size += g_l2cache_line_size;
 }
 while (size > 0) {
  pl310_write4(pl310_softc, PL310_INV_LINE_PA, start);
  start += g_l2cache_line_size;
  size -= g_l2cache_line_size;
 }

 pl310_cache_sync();
 PL310_UNLOCK(pl310_softc);
}
