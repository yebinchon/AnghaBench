
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ccung_softc {void* nclks; void* clks; void* ngates; void* gates; void* nresets; void* resets; } ;
typedef int device_t ;


 int aw_ccung_attach (int ) ;
 void* ccu_sun50i_h6_r_gates ;
 void* ccu_sun50i_h6_r_resets ;
 void* clks ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 void* nitems (void*) ;

__attribute__((used)) static int
ccu_sun50i_h6_r_attach(device_t dev)
{
 struct aw_ccung_softc *sc;

 sc = device_get_softc(dev);

 sc->resets = ccu_sun50i_h6_r_resets;
 sc->nresets = nitems(ccu_sun50i_h6_r_resets);
 sc->gates = ccu_sun50i_h6_r_gates;
 sc->ngates = nitems(ccu_sun50i_h6_r_gates);
 sc->clks = clks;
 sc->nclks = nitems(clks);

 return (aw_ccung_attach(dev));
}
