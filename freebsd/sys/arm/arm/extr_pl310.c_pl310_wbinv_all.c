
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sc_rtl_revision; int sc_enabled; } ;


 scalar_t__ CACHE_ID_RELEASE_r2p0 ;
 scalar_t__ CACHE_ID_RELEASE_r3p0 ;
 int PL310_CLEAN_INV_LINE_IDX ;
 int PL310_CLEAN_INV_WAY ;
 int PL310_LOCK (TYPE_1__*) ;
 int PL310_UNLOCK (TYPE_1__*) ;
 int g_l2cache_line_size ;
 int g_l2cache_way_mask ;
 int g_way_size ;
 int g_ways_assoc ;
 int pl310_cache_sync () ;
 TYPE_1__* pl310_softc ;
 int pl310_wait_background_op (int ,int) ;
 int pl310_write4 (TYPE_1__*,int ,int) ;
 int platform_pl310_write_debug (TYPE_1__*,int) ;

__attribute__((used)) static void
pl310_wbinv_all(void)
{

 if ((pl310_softc == ((void*)0)) || !pl310_softc->sc_enabled)
  return;

 PL310_LOCK(pl310_softc);
 pl310_write4(pl310_softc, PL310_CLEAN_INV_WAY, g_l2cache_way_mask);
 pl310_wait_background_op(PL310_CLEAN_INV_WAY, g_l2cache_way_mask);
 pl310_cache_sync();




 PL310_UNLOCK(pl310_softc);
}
