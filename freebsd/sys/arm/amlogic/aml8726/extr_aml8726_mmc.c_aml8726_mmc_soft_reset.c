
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_mmc_softc {int dummy; } ;
typedef int boolean_t ;


 int AML_MMC_IRQ_CONFIG_CMD_DONE_EN ;
 int AML_MMC_IRQ_CONFIG_REG ;
 int AML_MMC_IRQ_CONFIG_SOFT_RESET ;
 int CSR_BARRIER (struct aml8726_mmc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int ) ;

__attribute__((used)) static void
aml8726_mmc_soft_reset(struct aml8726_mmc_softc *sc, boolean_t enable_irq)
{
 uint32_t icr;

 icr = AML_MMC_IRQ_CONFIG_SOFT_RESET;

 if (enable_irq == 1)
  icr |= AML_MMC_IRQ_CONFIG_CMD_DONE_EN;

 CSR_WRITE_4(sc, AML_MMC_IRQ_CONFIG_REG, icr);
 CSR_BARRIER(sc, AML_MMC_IRQ_CONFIG_REG);
}
