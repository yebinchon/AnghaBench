
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct awg_softc {int dummy; } ;
typedef int if_t ;


 int AWG_LOCK (struct awg_softc*) ;
 int AWG_UNLOCK (struct awg_softc*) ;
 int awg_start_locked (struct awg_softc*) ;
 struct awg_softc* if_getsoftc (int ) ;

__attribute__((used)) static void
awg_start(if_t ifp)
{
 struct awg_softc *sc;

 sc = if_getsoftc(ifp);

 AWG_LOCK(sc);
 awg_start_locked(sc);
 AWG_UNLOCK(sc);
}
