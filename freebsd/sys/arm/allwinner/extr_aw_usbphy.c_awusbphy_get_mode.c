
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;
struct awusbphy_softc {int mode; } ;
typedef int device_t ;


 struct awusbphy_softc* device_get_softc (int ) ;
 int phynode_get_device (struct phynode*) ;

__attribute__((used)) static int
awusbphy_get_mode(struct phynode *phynode, int *mode)
{
 struct awusbphy_softc *sc;
 device_t dev;

 dev = phynode_get_device(phynode);
 sc = device_get_softc(dev);

 *mode = sc->mode;

 return (0);
}
