
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sc_enabled; } ;


 int PL310_LOCK (TYPE_1__*) ;
 int PL310_UNLOCK (TYPE_1__*) ;
 int pl310_cache_sync () ;
 TYPE_1__* pl310_softc ;

__attribute__((used)) static void
pl310_drain_writebuf(void)
{

 if ((pl310_softc == ((void*)0)) || !pl310_softc->sc_enabled)
  return;

 PL310_LOCK(pl310_softc);
 pl310_cache_sync();
 PL310_UNLOCK(pl310_softc);
}
