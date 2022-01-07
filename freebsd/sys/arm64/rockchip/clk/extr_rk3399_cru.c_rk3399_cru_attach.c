
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_cru_softc {int reset_offset; int reset_num; void* nclks; void* clks; void* ngates; void* gates; int dev; } ;
typedef int device_t ;


 struct rk_cru_softc* device_get_softc (int ) ;
 void* nitems (void*) ;
 void* rk3399_clks ;
 void* rk3399_gates ;
 int rk_cru_attach (int ) ;

__attribute__((used)) static int
rk3399_cru_attach(device_t dev)
{
 struct rk_cru_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->gates = rk3399_gates;
 sc->ngates = nitems(rk3399_gates);

 sc->clks = rk3399_clks;
 sc->nclks = nitems(rk3399_clks);

 sc->reset_offset = 0x400;
 sc->reset_num = 335;

 return (rk_cru_attach(dev));
}
