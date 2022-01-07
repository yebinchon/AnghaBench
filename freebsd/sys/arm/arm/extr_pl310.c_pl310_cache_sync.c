
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sc_rtl_revision; scalar_t__ sc_io_coherent; int sc_enabled; } ;


 scalar_t__ CACHE_ID_RELEASE_r3p0 ;
 int PL310_CACHE_SYNC ;
 TYPE_1__* pl310_softc ;
 int pl310_write4 (TYPE_1__*,int,int) ;

__attribute__((used)) static __inline void
pl310_cache_sync(void)
{

 if ((pl310_softc == ((void*)0)) || !pl310_softc->sc_enabled)
  return;


 if (pl310_softc->sc_io_coherent)
  return;







  pl310_write4(pl310_softc, PL310_CACHE_SYNC, 0xffffffff);
}
