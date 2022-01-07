
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct awg_softc {int dummy; } ;


 int AWG_LOCK (struct awg_softc*) ;
 int AWG_UNLOCK (struct awg_softc*) ;
 int awg_init_locked (struct awg_softc*) ;

__attribute__((used)) static void
awg_init(void *softc)
{
 struct awg_softc *sc;

 sc = softc;

 AWG_LOCK(sc);
 awg_init_locked(sc);
 AWG_UNLOCK(sc);
}
