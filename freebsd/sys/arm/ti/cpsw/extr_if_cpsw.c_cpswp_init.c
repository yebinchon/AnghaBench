
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpswp_softc {int swsc; } ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int cpswp_init_locked (void*) ;

__attribute__((used)) static void
cpswp_init(void *arg)
{
 struct cpswp_softc *sc = arg;

 CPSW_DEBUGF(sc->swsc, (""));
 CPSW_PORT_LOCK(sc);
 cpswp_init_locked(arg);
 CPSW_PORT_UNLOCK(sc);
}
