
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ccung_softc {void* n_clk_init; void* clk_init; void* nclks; void* clks; void* ngates; void* gates; void* nresets; void* resets; } ;
typedef int device_t ;


 int aw_ccung_attach (int ) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 void* h3_ccu_clks ;
 void* h3_ccu_gates ;
 void* h3_ccu_resets ;
 void* h3_init_clks ;
 void* nitems (void*) ;

__attribute__((used)) static int
ccu_h3_attach(device_t dev)
{
 struct aw_ccung_softc *sc;

 sc = device_get_softc(dev);

 sc->resets = h3_ccu_resets;
 sc->nresets = nitems(h3_ccu_resets);
 sc->gates = h3_ccu_gates;
 sc->ngates = nitems(h3_ccu_gates);
 sc->clks = h3_ccu_clks;
 sc->nclks = nitems(h3_ccu_clks);
 sc->clk_init = h3_init_clks;
 sc->n_clk_init = nitems(h3_init_clks);

 return (aw_ccung_attach(dev));
}
