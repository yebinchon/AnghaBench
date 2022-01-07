
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ccung_softc {void* n_clk_init; void* clk_init; void* nclks; void* clks; void* ngates; void* gates; void* nresets; void* resets; } ;
typedef int device_t ;


 void* a83t_ccu_gates ;
 void* a83t_ccu_resets ;
 void* a83t_clks ;
 void* a83t_init_clks ;
 int aw_ccung_attach (int ) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 void* nitems (void*) ;

__attribute__((used)) static int
ccu_a83t_attach(device_t dev)
{
 struct aw_ccung_softc *sc;

 sc = device_get_softc(dev);

 sc->resets = a83t_ccu_resets;
 sc->nresets = nitems(a83t_ccu_resets);
 sc->gates = a83t_ccu_gates;
 sc->ngates = nitems(a83t_ccu_gates);
 sc->clks = a83t_clks;
 sc->nclks = nitems(a83t_clks);
 sc->clk_init = a83t_init_clks;
 sc->n_clk_init = nitems(a83t_init_clks);

 return (aw_ccung_attach(dev));
}
