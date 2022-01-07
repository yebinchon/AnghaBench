
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpswp_softc {int dummy; } ;
struct cpsw_softc {int active_slave; TYPE_1__* port; int dualemac; } ;
typedef int device_t ;
struct TYPE_2__ {int dev; } ;


 int CPSW_DEBUGF (struct cpsw_softc*,char*) ;
 int CPSW_PORTS ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int cpswp_stop_locked (struct cpswp_softc*) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
cpsw_shutdown(device_t dev)
{
 struct cpsw_softc *sc;
 struct cpswp_softc *psc;
 int i;

  sc = device_get_softc(dev);
 CPSW_DEBUGF(sc, (""));
 for (i = 0; i < CPSW_PORTS; i++) {
  if (!sc->dualemac && i != sc->active_slave)
   continue;
  psc = device_get_softc(sc->port[i].dev);
  CPSW_PORT_LOCK(psc);
  cpswp_stop_locked(psc);
  CPSW_PORT_UNLOCK(psc);
 }

 return (0);
}
