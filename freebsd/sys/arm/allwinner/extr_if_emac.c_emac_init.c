
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_softc {int dummy; } ;


 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 int emac_init_locked (struct emac_softc*) ;

__attribute__((used)) static void
emac_init(void *xcs)
{
 struct emac_softc *sc;

 sc = (struct emac_softc *)xcs;
 EMAC_LOCK(sc);
 emac_init_locked(sc);
 EMAC_UNLOCK(sc);
}
