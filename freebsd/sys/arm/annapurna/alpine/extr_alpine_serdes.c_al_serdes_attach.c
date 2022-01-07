
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct al_serdes_softc {int res; } ;
typedef int device_t ;
struct TYPE_3__ {int mode_set; int lock; } ;


 int MTX_DEF ;
 int al_serdes_spec ;
 TYPE_1__* alpine_serdes_eth_group_mode ;
 int bus_alloc_resources (int ,int ,int *) ;
 struct al_serdes_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ rman_get_bushandle (int ) ;
 void* serdes_base ;

__attribute__((used)) static int
al_serdes_attach(device_t dev)
{
 struct al_serdes_softc *sc;
 int err;

 sc = device_get_softc(dev);

 err = bus_alloc_resources(dev, al_serdes_spec, &sc->res);
 if (err != 0) {
  device_printf(dev, "could not allocate resources\n");
  return (err);
 }


 for (int i = 0; i < nitems(alpine_serdes_eth_group_mode); i++) {
  mtx_init(&alpine_serdes_eth_group_mode[i].lock, "AlSerdesMtx",
      ((void*)0), MTX_DEF);
  alpine_serdes_eth_group_mode[i].mode_set = 0;
 }

 serdes_base = (void *)rman_get_bushandle(sc->res);

 return (0);
}
