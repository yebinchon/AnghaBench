
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct al_serdes_softc {int res; } ;
typedef int device_t ;
struct TYPE_3__ {int mode_set; int lock; } ;


 int al_serdes_spec ;
 TYPE_1__* alpine_serdes_eth_group_mode ;
 int bus_release_resources (int ,int ,int *) ;
 struct al_serdes_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static int
al_serdes_detach(device_t dev)
{
 struct al_serdes_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, al_serdes_spec, &sc->res);

 for (int i = 0; i < nitems(alpine_serdes_eth_group_mode); i++) {
  mtx_destroy(&alpine_serdes_eth_group_mode[i].lock);
  alpine_serdes_eth_group_mode[i].mode_set = 0;
 }

 return (0);
}
