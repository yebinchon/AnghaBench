
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tegra_pcib_softc {int dummy; } ;
struct tegra_pcib_irqsrc {int irq; } ;


 int AFI_MSI_EN_VEC (int) ;
 int AFI_MSI_INTR_IN_REG ;
 int AFI_MSI_VEC (int) ;
 scalar_t__ AFI_RD4 (struct tegra_pcib_softc*,int ) ;
 int AFI_WR4 (struct tegra_pcib_softc*,int ,scalar_t__) ;

__attribute__((used)) static inline void
tegra_pcib_isrc_mask(struct tegra_pcib_softc *sc,
     struct tegra_pcib_irqsrc *tgi, uint32_t val)
{
 uint32_t reg;
 int offs, bit;

 offs = tgi->irq / AFI_MSI_INTR_IN_REG;
 bit = 1 << (tgi->irq % AFI_MSI_INTR_IN_REG);

 if (val != 0)
  AFI_WR4(sc, AFI_MSI_VEC(offs), bit);
 reg = AFI_RD4(sc, AFI_MSI_EN_VEC(offs));
 if (val != 0)
  reg |= bit;
 else
  reg &= ~bit;
 AFI_WR4(sc, AFI_MSI_EN_VEC(offs), reg);
}
