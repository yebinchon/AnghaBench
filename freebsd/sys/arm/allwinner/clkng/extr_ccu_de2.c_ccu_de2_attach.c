
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ccung_softc {void* nclks; void* clks; void* ngates; void* gates; void* nresets; void* resets; } ;
typedef int device_t ;


 int aw_ccung_attach (int ) ;
 void* de2_ccu_clks ;
 void* de2_ccu_gates ;
 void* de2_ccu_resets ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 void* nitems (void*) ;

__attribute__((used)) static int
ccu_de2_attach(device_t dev)
{
 struct aw_ccung_softc *sc;

 sc = device_get_softc(dev);

 sc->resets = de2_ccu_resets;
 sc->nresets = nitems(de2_ccu_resets);
 sc->gates = de2_ccu_gates;
 sc->ngates = nitems(de2_ccu_gates);
 sc->clks = de2_ccu_clks;
 sc->nclks = nitems(de2_ccu_clks);

 return (aw_ccung_attach(dev));
}
