
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_pcib_softc {scalar_t__ sc_type; int sc_bsh; int sc_bst; } ;


 scalar_t__ MV_TYPE_PCIE ;
 int PCIE_REG_IRQ_MASK ;
 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
pcib_write_irq_mask(struct mv_pcib_softc *sc, uint32_t mask)
{

 if (sc->sc_type != MV_TYPE_PCIE)
  return;

 bus_space_write_4(sc->sc_bst, sc->sc_bsh, PCIE_REG_IRQ_MASK, mask);
}
