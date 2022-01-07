
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_flags; } ;
struct cpswp_softc {struct ifnet* ifp; } ;
struct cpsw_softc {TYPE_1__* port; int dualemac; } ;
struct TYPE_2__ {int dev; } ;


 int IFF_UP ;
 struct cpswp_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cpsw_ports_down(struct cpsw_softc *sc)
{
 struct cpswp_softc *psc;
 struct ifnet *ifp1, *ifp2;

 if (!sc->dualemac)
  return (1);
 psc = device_get_softc(sc->port[0].dev);
 ifp1 = psc->ifp;
 psc = device_get_softc(sc->port[1].dev);
 ifp2 = psc->ifp;
 if ((ifp1->if_flags & IFF_UP) == 0 && (ifp2->if_flags & IFF_UP) == 0)
  return (1);

 return (0);
}
