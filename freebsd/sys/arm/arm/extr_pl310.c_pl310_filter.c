
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int sc_enabled; } ;


 int FILTER_HANDLED ;
 int INTR_MASK_ECNTR ;
 int PL310_INTR_MASK ;
 int panic (char*) ;
 int pl310_read4 (struct pl310_softc*,int ) ;

__attribute__((used)) static int
pl310_filter(void *arg)
{
 struct pl310_softc *sc = arg;
 uint32_t intr;

 intr = pl310_read4(sc, PL310_INTR_MASK);

 if (!sc->sc_enabled && (intr & INTR_MASK_ECNTR)) {





  panic("pl310: caches disabled but cache event detected\n");
 }

 return (FILTER_HANDLED);
}
