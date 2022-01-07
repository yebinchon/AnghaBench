
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sdma_softc {scalar_t__ sc_hw_rev; } ;


 scalar_t__ DMA4_OMAP3_REV ;

__attribute__((used)) static inline int
ti_sdma_is_omap3_rev(struct ti_sdma_softc *sc)
{
 return (sc->sc_hw_rev == DMA4_OMAP3_REV);
}
