
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ccung_softc {void* nclks; void* clks; void* ngates; void* gates; void* nresets; void* resets; } ;
typedef int device_t ;


 void* a31_ccu_clks ;
 void* a31_ccu_gates ;
 void* a31_ccu_resets ;
 int aw_ccung_attach (int ) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 void* nitems (void*) ;

__attribute__((used)) static int
ccu_a31_attach(device_t dev)
{
 struct aw_ccung_softc *sc;

 sc = device_get_softc(dev);

 sc->resets = a31_ccu_resets;
 sc->nresets = nitems(a31_ccu_resets);
 sc->gates = a31_ccu_gates;
 sc->ngates = nitems(a31_ccu_gates);
 sc->clks = a31_ccu_clks;
 sc->nclks = nitems(a31_ccu_clks);

 return (aw_ccung_attach(dev));
}
