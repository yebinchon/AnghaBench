
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_paddr_t ;
struct TYPE_6__ {scalar_t__ sc_rtl_revision; int sc_enabled; } ;


 scalar_t__ CACHE_ID_RELEASE_r1p0 ;
 scalar_t__ CACHE_ID_RELEASE_r2p0 ;
 scalar_t__ CACHE_ID_RELEASE_r3p1 ;
 int PL310_CLEAN_INV_LINE_PA ;
 int PL310_CLEAN_LINE_PA ;
 int PL310_INV_LINE_PA ;
 int PL310_LOCK (TYPE_1__*) ;
 int PL310_UNLOCK (TYPE_1__*) ;
 int g_l2cache_align_mask ;
 scalar_t__ g_l2cache_line_size ;
 int pl310_cache_sync () ;
 TYPE_1__* pl310_softc ;
 int pl310_write4 (TYPE_1__*,int ,int) ;
 int platform_pl310_write_debug (TYPE_1__*,int) ;

__attribute__((used)) static void
pl310_wbinv_range(vm_paddr_t start, vm_size_t size)
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
   pl310_write4(pl310_softc, PL310_CLEAN_INV_LINE_PA,
       start);
  start += g_l2cache_line_size;
  size -= g_l2cache_line_size;
 }






 pl310_cache_sync();
 PL310_UNLOCK(pl310_softc);
}
